import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart'; // Import file_picker for file selection
import 'package:striaa/pages/registrationCompleted.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/DropDown.dart';
import 'package:striaa/widgets/FilePicker.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/progressbar.dart';

class Question6 extends StatefulWidget {
  @override
  _Question6State createState() => _Question6State();
}

class _Question6State extends State<Question6> {

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
                      style: FontUtil.font26SB(height: 1.2),
                    ),
                    SizedBox(height: 30),
                    // Dropdown Button
                    OurDropdown(),
                    SizedBox(height: 15),
                    // File Picker Button
                    Container(
                        width: appwidth(context)/2.6,
                        child: OurFilepicker()
                    ),
                    SizedBox(height: 15),
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
                              builder: (context) => RegistrationCompleted()),
                        );
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
}
