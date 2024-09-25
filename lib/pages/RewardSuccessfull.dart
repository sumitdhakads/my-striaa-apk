
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class RewardSuccessfull extends StatelessWidget {
  const RewardSuccessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // Background image or content to blur
          Positioned.fill(
            top: 30,
            child: Image.asset(
              ImageUtil.rewardpageimage, // Add your background image here
              fit: BoxFit.cover,
            ),
          ),

          // Apply blur to the content
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4), // Adjust blur intensity here
              child: Container(
                color: Colors.black.withOpacity(0.1), // Adjust opacity as needed
              ),
            ),
          ),

          // Dialog box (like a modal)
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StriaaPage()));
            },
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.87,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment(1, -1),  // Far off-screen, unlikely to be visible.
                      child: SvgIcon(
                        icon: ImageUtil.crossicon,
                      ),
                    ),

                    // Illustration at the top (replace with appropriate image asset)
                    Image.asset(
                      ImageUtil.successfullreward, // You can replace this with your own image path
                      height: 180,
                      width: 180,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 15),
                     DashedLine(width: appwidth(context)),
                    const SizedBox(height: 25),

                    // Title Text
                    Text(
                      "Successfully redeemed",
                      style: FontUtil.font24SB()
                    ),
                    const SizedBox(height: 10),

                    // Description Text
                    Text(
                      "You have successfully redeemed your points, you will receive an email for gift card and within 24 hours",
                      textAlign: TextAlign.center,
                      style: FontUtil.font16N(color: ColorUtil.textLightGrey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
