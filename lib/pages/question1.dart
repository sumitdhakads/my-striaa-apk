import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/question2.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CheckboxContainer.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/progressbar.dart';

class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  // State for the checkboxes
  bool _isDiabetesChecked = false;
  bool _isThyroidChecked = false;
  bool _isHighBPChecked = false;
  bool _isLowBPChecked = false;
  bool _ishalwa = false;

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
                  MaterialPageRoute(builder: (context) => StriaaPage()));
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
                    ProgressBar(
                      progress: 0.2,
                    ),

                    SizedBox(height: 30),
                    Text(
                      'Are you suffering from any of the below?',
                      style: FontUtil.font26SB(),
                    ),

                    SizedBox(height: 30),
                    Checkboxcontainer(
                        title: 'Diabetes',
                        value: _isDiabetesChecked,
                        onChanged: (val) {
                          setState(() {
                            _isDiabetesChecked = val ?? false;
                          });
                        }),
                    SizedBox(
                      height: 15,
                    ),
                    Checkboxcontainer(
                        title: 'Thyroid Disorder',
                        value: _isThyroidChecked,
                        onChanged: (val) {
                          setState(() {
                            _isThyroidChecked = val ?? false;
                          });
                        }),
                    SizedBox(
                      height: 15,
                    ),
                    Checkboxcontainer(
                        title: 'High blood pressure',
                        value: _isHighBPChecked,
                        onChanged: (val) {
                          setState(() {
                            _isHighBPChecked = val ?? false;
                          });
                        }),
                    SizedBox(
                      height: 15,
                    ),
                    Checkboxcontainer(
                        title: 'Low blood pressure',
                        value: _isLowBPChecked,
                        onChanged: (val) {
                          setState(() {
                            _isLowBPChecked = val ?? false;
                          });
                        }),
                    Spacer(),
                    ButtonWidget(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Question2()));
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
}
