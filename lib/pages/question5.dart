import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:striaa/pages/question3.dart';
import 'package:striaa/pages/question6.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/progressbar.dart';

class Question5 extends StatefulWidget {
  @override
  _Question5State createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  String? _selectedOption = 'No'; // State for radio button

  bool _showTextFields = false; // To control the visibility of text fields
  TextEditingController _usg = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorUtil.primaryColor,
        leading: Row(
          children: [
            SizedBox(width: 5),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                backgroundColor: ColorUtil.primaryColor,
                child: SvgIcon(
                  icon: ImageUtil.leftwhiteicon,
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Question6()));
            },
            child: Text(
              'Skip',
              style: FontUtil.font16N(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        color: ColorUtil.primaryColor,
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
                    SizedBox(height: 15),
                    // Add the progress bar below the AppBar
                   ProgressBar(progress: 0.8),

                    SizedBox(height: 30),
                    Text(
                      'Please share Result of any Mammogram or USG Breasts done earlier',
                      style: FontUtil.font26SB(),
                    ),
                    SizedBox(height: 20),

                    // Radio buttons for Yes and No
                    _buildRadioButtonRow('Upload File', 'Upload File'),
                    _buildRadioButtonRow('Not applicable', 'Not applicable'),

                    SizedBox(height: 30,),
                    DashedLine(width: MediaQuery.of(context).size.width),

                    // Conditionally show text fields if 'Yes' is selected
                    if (_showTextFields) ...[
                      SizedBox(height: 30),
                      _buildTextField(_usg, "BIRADS1",
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
                                    style:
                                        FontUtil.font12SB(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],

                    Spacer(),
                   ButtonWidget(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Question6()));
                        },
                        color: Theme.of(context).primaryColor,
                        text: 'Next',
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

// Helper function to build the radio button row
  Widget _buildRadioButtonRow(String title, String value) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedOption = value;
            _showTextFields =
                value == 'Upload File'; // Show text fields if 'Yes' is selected
          });
        },
        child: Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: _selectedOption,
              activeColor: ColorUtil.primaryColor,
              onChanged: (val) {
                setState(() {
                  _selectedOption = val;
                  _showTextFields = val == 'Upload File';
                });
              },
            ),
            Expanded(
              child: Text(
                title,
                style: _selectedOption == value
                    ? FontUtil.font16SB() // Apply bold font when active
                    : FontUtil.font16N(
                        color:
                            ColorUtil.textLightGrey), // Normal font otherwise
              ),
            ),
          ],
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
