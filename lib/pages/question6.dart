import 'package:flutter/material.dart';
import 'package:striaa/pages/registrationCompleted.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/progressbar.dart';

class Question6 extends StatefulWidget {
  @override
  _Question6State createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  final String? _selectedOption = 'No'; // State for radio button

  final bool _showTextFields = false; // To control the visibility of text fields
  final TextEditingController _familyMemberController = TextEditingController();
  final TextEditingController _cancerTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // Body content with rounded corners
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
                decoration: BoxDecoration(
                  color: ColorUtil.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   //Progressbar

                    ProgressBar(progress: 0.9),

                    SizedBox(height: 74),
                    Text(
                      'Please share Result of any Mammogram or USG Breasts done earlier',
                      style: FontUtil.font26SB(),
                    ),
                    SizedBox(height: 30),
                    _buildTextField(_familyMemberController, "BIRADS1",
                        SvgIcon(icon: ImageUtil.downicon)),
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              children: [
                                SvgIcon(icon: ImageUtil.uploadicon),
                                SizedBox(width: 10),
                                Text(
                                  "Upload File",
                                  style: FontUtil.font12SB(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "*Not applicable",
                      style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                    ),
                    Spacer(),
                    ButtonWidget(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistrationCompleted()));
                        },
                        color: Theme.of(context).primaryColor,
                        text: 'Continue',
                        textColor: Colors.white,
                      ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build text fields
  Widget _buildTextField(
      TextEditingController controller, String hint, SvgIcon icon) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: icon,
              ),
              hintText: hint,
              hintStyle: FontUtil.font12SB(color: ColorUtil.textLightGrey),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide.none,
              ),
              contentPadding:
              EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            ),
          ),
        ],
      ),
    );
  }
}