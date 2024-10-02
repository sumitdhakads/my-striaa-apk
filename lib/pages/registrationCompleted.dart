import 'package:flutter/material.dart';
import 'package:striaa/pages/HomePage.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class RegistrationCompleted extends StatefulWidget {
  const RegistrationCompleted({super.key});

  @override
  State<RegistrationCompleted> createState() => _RegistrationCompletedState();
}

class _RegistrationCompletedState extends State<RegistrationCompleted> {

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds:2000),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StriaaPage()),(route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center the logo image
            ImageWidget(
              image: ImageUtil.logo,
              height: 80,
              width: 90,
            ),
            SizedBox(height: 30),

            // Thank you text
            Text(
              "Thank you for registering",
              style: FontUtil.font30B(), // Adjust font size according to the design
              textAlign: TextAlign.center, // Center the text
            ),
            SizedBox(height: 15),

            // Description text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0), // Add padding for better spacing
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit tempor incididunt.",
                style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                textAlign: TextAlign.center,  // Center the text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
