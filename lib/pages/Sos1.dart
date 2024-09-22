import 'package:flutter/material.dart';
import 'package:striaa/pages/Sos2.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class Sos1 extends StatelessWidget {
  const Sos1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        margin: EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Are you in emergency?",
              style: FontUtil.font26SB(),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Press the button below help will\nreach you soon.",
              style: FontUtil.font16N(color: ColorUtil.textLightGrey),textAlign: TextAlign.center,
            ),
            Center(
              child: ImageWidget(
                image: ImageUtil.sosonepng,
              ),
            ),
            Spacer(),
            ButtonWidget(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Sos2()));
            },color: ColorUtil.primaryColor,
                text: "Skip in to home in 5 second  >>",textColor: Colors.white,),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
