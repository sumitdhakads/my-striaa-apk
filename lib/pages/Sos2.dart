import 'package:flutter/material.dart';
import 'package:striaa/pages/SosActivated.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class Sos2 extends StatelessWidget {
  const Sos2({super.key});

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
            SizedBox(height: 50,),
            Center(
              child: ImageWidget(
                height: 322,
                image: ImageUtil.newsos2,
              ),
            ),
            Spacer(),
            SizedBox(
              width: appwidth(context),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SosActivated()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorUtil.primaryColor,
                  elevation: 0,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Skip in to home in 5 second",
                        style: FontUtil.font16M(color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      SvgIcon(icon: ImageUtil.ligththreearrow), // Missing comma and closing parenthesis here
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
