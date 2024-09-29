import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/question3.dart';
import 'package:striaa/pages/registrationCompleted.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/CustomRadio.dart'; // Import for CustomRadioButton
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/progressbar.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  String? _selectedOption = 'No'; // State for radio button
  bool _showTextFields = false; // To control the visibility of text fields
  TextEditingController _familyMemberController = TextEditingController();
  TextEditingController _cancerTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        icon: ImageUtil.leftwhiteicon,
        heigth: 72,
        bgcolor: ColorUtil.primaryColor,
        action: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text(
            "Skip",
            style: FontUtil.font16N(color: Colors.white),
          ),
        ),
        actiononTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegistrationCompleted()));
        },
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
                    ProgressBar(progress: 0.4),

                    SizedBox(height: 30),
                    Text(
                      'Has any one from your family ever been diagnosed with cancer?',
                      style: FontUtil.font26SB(height: 1.38),
                    ),
                    SizedBox(height: 30),
                    // Horizontal Radio buttons for Yes and No
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomRadioButton(
                            title: 'Yes',
                            value: 'Yes',
                            groupValue: _selectedOption,
                            onChanged: (val) {
                              setState(() {
                                _selectedOption = val ?? 'No';
                                _showTextFields = val == 'Yes';
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          child: CustomRadioButton(
                            title: 'No',
                            value: 'No',
                            groupValue: _selectedOption,
                            onChanged: (val) {
                              setState(() {
                                _selectedOption = val ?? 'No';
                                _showTextFields = val == 'Yes';
                              });
                            },
                          ),
                        ),
                        Spacer()
                      ],
                    ),

                    // Conditionally show text fields if 'Yes' is selected
                    SizedBox(height: 30),
                    if (_showTextFields) ...[
                      DashedLine(width: MediaQuery.of(context).size.width),
                      SizedBox(height: 30,),
                      _buildTextField('If yes, who?', _familyMemberController),
                      SizedBox(height: 15),
                      _buildTextField('Which cancer?', _cancerTypeController),
                    ],

                    Spacer(),
                    ButtonWidget(
                      onPressed: () {
                        // Handle next button press
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Question3()));
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

  // Helper function to build text fields
  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: FontUtil.font14M(),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),

            // When the text field is focused
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  color: ColorUtil.primaryColor,
                  width: 1), // Custom color and width for focused state
            ),
          ),
        ),
      ],
    );
  }
}
