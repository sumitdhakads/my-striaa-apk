import 'package:flutter/material.dart';
import 'package:striaa/pages/Congratulation.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/Radiobutton.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/progressbar.dart';

class Exam4 extends StatefulWidget {
  @override
  _Exam4State createState() => _Exam4State();
}

class _Exam4State extends State<Exam4> {
  String _selectedOption = 'Yes'; // Default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        icon: ImageUtil.leftwhiteicon,
        heigth: 72,
        bgcolor: ColorUtil.primaryColor,
        action: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text("Skip",style: FontUtil.font16N(color: Colors.white),),
        ),
        actiononTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Congratulation()));
        },
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
                    ProgressBar(progress: 0.6),
                    SizedBox(height: 30),
                    Text(
                      'Did you Feel a Lump',
                      style: FontUtil.font26SB(height: 1.38),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Congratulation()));
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
