import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:striaa/pages/RewardSuccessfull.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/borderedbutton.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';

class RedeemRewardsPage extends StatelessWidget {
  const RedeemRewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent, // Ensures the background is transparent
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


          // Positioned modal (dialog) at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), // Round only top-left corner
                  topRight: Radius.circular(25), // Round only top-right corner
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Illustration at the top (replace with appropriate image asset)
                  Image.asset(
                    ImageUtil.redeemimage, // You can replace this with your own image path
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),

                  // Title Text
                  Text(
                    "Redeem rewards",
                    style: FontUtil.font24SB()
                  ),
                  const SizedBox(height: 8),

                  // Description Text
                  Text(
                    "Are you sure you want to redeem your points towards bookmyshow gift card?",
                    textAlign: TextAlign.center,
                    style: FontUtil.font16N(color: ColorUtil.textLightGrey)
                  ),

                  const SizedBox(height: 25),

                  DashedLine(width: appwidth(context)),

                  SizedBox(height: 25,),

                  // Buttons Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // No Button
                      Expanded(
                        child: BorderedButton(text: "No",onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StriaaPage() ));
                        },textColor: Colors.black,color: Colors.white,border: 0.3,),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ButtonWidget(text: "Yes",onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RewardSuccessfull()));
                        },textColor: Colors.white,color: ColorUtil.primaryColor,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}