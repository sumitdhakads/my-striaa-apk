import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/SmallButtton.dart';
import 'package:striaa/widgets/borderedbutton.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';

class Bookmyshow extends StatelessWidget {
  final bool isGrayscale; // New parameter to apply grayscale filter

  const Bookmyshow({
    super.key,
    required this.isGrayscale, // Constructor requires the new parameter
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: 95,
            width: 95,
            color: Colors.grey.shade400,
            child: Image.asset(
               isGrayscale ? ImageUtil.greyimg : ImageUtil.place,
                fit: BoxFit.cover,
              ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book my Show',
                style:  isGrayscale ? FontUtil.font14SB(color: ColorUtil.textLightGrey) : FontUtil.font14SB(),
              ),
              Text(
                'Sed ut perspis unde omnis is.',
                style: FontUtil.font12N(color: ColorUtil.textLightGrey),
              ),
              SizedBox(height: 14),
              Smallbuttton(
                text: "Redeem",
                color:  isGrayscale ? ColorUtil.textLightGrey : Colors.black,
                onPressed: () {
                  isGrayscale ? null : showRedeemBottomSheet(context);
                },
                textColor:isGrayscale ? ColorUtil.textLightGrey : Colors.white ,
                verpadding: 6,
                horpadding: 20,
                elevation: 0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  //This method shows the bottom model sheet of Redeem reward
  void showRedeemBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Stack(
          children: [
            // Blur background
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  // color: Colors.black.withOpacity(0.2), // Semi-transparent overlay
                ),
              ),
            ),

            // Bottom Sheet Content
            Container(
              height: 400,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    ImageUtil.redeemimage, // Replace with the correct asset path
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Redeem rewards",
                    style: FontUtil.font24SB(),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Are you sure you want to redeem your points towards a BookMyShow gift card?",
                    textAlign: TextAlign.center,
                    style: FontUtil.font16N(letterSpacing: -0.2 ,color: ColorUtil.textLightGrey,),
                  ),
                  const SizedBox(height: 25),
                 DashedLine(width: appwidth(context)),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){Navigator.pop(context);},
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(width: 0.5,color: Colors.black),
                            ),
                            child: Center(child: Text("No",style: FontUtil.font16M())),
                          ),
                        )
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context); // Close bottom sheet
                            showRedeemSuccessDialog(context);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: ColorUtil.primaryColor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(child: Text("Yes",style: FontUtil.font16M(color: Colors.white))),
                          ),
                        )
                        // ButtonWidget(
                        //   text: "Yes",
                        //   onPressed: () {
                        //     Navigator.pop(context); // Close bottom sheet
                        //     showRedeemSuccessDialog(context);
                        //   },
                        //   textColor: Colors.white,
                        //   color: ColorUtil.primaryColor,
                        // ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  // This method shows the "Successfully Redeemed" dialog with a blurred background
  void showRedeemSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Blurred background
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 390,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    // Close Icon (Cross)
                    Align(
                      alignment: Alignment(1, -1), // Positioned at the top-right corner
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // Close the dialog
                        },
                        child: SvgPicture.asset(
                          ImageUtil.crossicon, // Replace with your cross icon
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          ImageUtil.successfullreward, // Use the correct path for the reward image
                          height: 180,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20),
                        DashedLine(width: appwidth(context)),
                        SizedBox(height: 24),
                        Text(
                          "Successfully redeemed",
                          style: FontUtil.font24SB(),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "You have successfully redeemed your points. You will receive an email for the gift card within 24 hours.",
                          textAlign: TextAlign.center,
                          style: FontUtil.font16N(letterSpacing:-0.2,color: ColorUtil.textLightGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
