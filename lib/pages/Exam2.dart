import 'package:flutter/material.dart';
import 'package:striaa/pages/Exam3.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/SmallButtton.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class Exam2 extends StatelessWidget {
  const Exam2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "Exam",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30,bottom: 25),
          padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
          child: Column(
            children: [
              Container(
                height: 466,
                width: appHeight(context),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    ImageUtil.examone,
                    fit: BoxFit.cover, // Ensures the image covers the container
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Did you find any skin changes?",
                style: FontUtil.font26SB(),
                textAlign: TextAlign.center,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing "
                    "elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Smallbuttton(
                      text: "No",
                      color: Colors.black,
                      textColor: Colors.white,
                      fontstyle: FontUtil.font16SB(color: Colors.white),
                      onPressed: () {
                        // Define the "No" button action
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Exam3()));
                      },
                    ),
                  ),
                  SizedBox(width: 20), // Space between the buttons
                  Expanded(
                    child: Smallbuttton(
                      text: "Yes",
                      color: ColorUtil.primaryColor, // Assuming you have defined pink in ColorUtil
                      textColor: Colors.white,
                      fontstyle: FontUtil.font16SB(color: Colors.white),
                      onPressed: () {
                        // Define the "Yes" button action
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Exam3()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
