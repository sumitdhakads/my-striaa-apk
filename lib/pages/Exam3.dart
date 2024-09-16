import 'package:flutter/material.dart';
import 'package:striaa/pages/Exam4.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/Radiobutton.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/progressbar.dart';

class Exam3 extends StatefulWidget {
  @override
  _Exam3State createState() => _Exam3State();
}

class _Exam3State extends State<Exam3> {
  String _selectedOption = 'Yes'; // Default value

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
                  MaterialPageRoute(builder: (context) => Exam4()));
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
                    // Progress Bar
                    ProgressBar(progress: 0.4),
                    SizedBox(height: 30),
                    Text(
                      'Did you find any nipple discharge?',
                      style: FontUtil.font26SB(),
                    ),
                    SizedBox(height: 20),

                    // Use the RadioButtonWidget
                    RadioButtonWidget(
                      title: 'yes',
                      value: 'yes',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'yes';
                        });
                      },
                    ),
                    RadioButtonWidget(
                      title: 'No',
                      value: 'No',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'No';
                        });
                      },
                    ),

                    Spacer(),
                    ButtonWidget(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Exam4()));
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
