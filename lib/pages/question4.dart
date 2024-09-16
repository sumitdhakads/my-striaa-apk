import 'package:flutter/material.dart';
import 'package:striaa/pages/question5.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/Radiobutton.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/progressbar.dart';

class Question4 extends StatefulWidget {
  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  String _selectedOption = 'Within three months'; // Default value

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Question5()));
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
                    ProgressBar(progress: 0.7),
                    SizedBox(height: 30),
                    Text(
                      'Last Menstrual Period',
                      style: FontUtil.font26SB(),
                    ),
                    SizedBox(height: 15),

                    // Date fields
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              children: [
                                Text("From: ",style: FontUtil.font12N(color: ColorUtil.textLightGrey),),
                                Text("DD/MM/YY ",style: FontUtil.font12SB(),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              children: [
                                Text("To: ",style: FontUtil.font12N(color: ColorUtil.textLightGrey),),
                                Text("DD/MM/YY ",style: FontUtil.font12SB(),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    DashedLine(width: MediaQuery.of(context).size.width),
                    SizedBox(height: 30),
                    Text(
                      'When was the last time you had a Breast Examination?',
                      style: FontUtil.font26SB(),
                    ),
                    SizedBox(height: 20),

                    // Use the RadioButtonWidget for options
                    RadioButtonWidget(
                      title: 'Within three months',
                      value: 'Within three months',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'Within three months';
                        });
                      },
                    ),
                    RadioButtonWidget(
                      title: '3 to 6 months ago',
                      value: '3 to 6 months ago',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'Within three months';
                        });
                      },
                    ),
                    RadioButtonWidget(
                      title: '6 months to 1 year ago',
                      value: '6 months to 1 year ago',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'Within three months';
                        });
                      },
                    ),
                    RadioButtonWidget(
                      title: 'None of the above',
                      value: 'None of the above',
                      groupValue: _selectedOption,
                      onChanged: (val) {
                        setState(() {
                          _selectedOption = val ?? 'Within three months';
                        });
                      },
                    ),

                    Spacer(),
                    ButtonWidget(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Question5()));
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
