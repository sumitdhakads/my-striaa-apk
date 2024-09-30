import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:striaa/pages/Exam1.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class SelfCheckupPage extends StatefulWidget {
  const SelfCheckupPage({super.key});

  @override
  State<SelfCheckupPage> createState() => _SelfCheckupPageState();
}

class _SelfCheckupPageState extends State<SelfCheckupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Self Checkup",
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: Stack(
          children: [
            Center(
              child: Transform.scale(
                scale: 0.85,
                child: ImageWidget(image: ImageUtil.doctordidi),
              ),
            ),
            Positioned(
              top: 3,
              right: 2,
              child: SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    ImageWidget(
                      image: ImageUtil.bubble,
                    ),
                    Positioned(
                      top: 40,
                      left: 20,
                      right: 10,
                      child: Transform.rotate(
                        angle: 0.2,
                        child: Text(
                          "Check the cycle once",
                          style: FontUtil.font18SB(color: Colors.white),
                          textAlign: TextAlign.center, // To center the text
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 90,
                right: 0,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: SvgIcon(
                      icon: ImageUtil.audio,
                    ),
                  ),
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 25,
              child: ButtonWidget(
                text: "Start your self exam",
                textColor: Colors.white,
                color: ColorUtil.primaryColor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 3.0,
                              sigmaY: 3.0,
                            ),
                            child: Container(
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Material(
                              color: Colors.transparent,
                              child: Container(
                                width: appwidth(context),
                                margin: EdgeInsets.symmetric(
                                  horizontal: leftRightAppPadding,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 25,
                                  horizontal: leftRightAppPadding,
                                ),
                                child: SizedBox(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Proceed Test with',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                color: ColorUtil.textLightGrey,
                                              ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      DashedLine(width: appwidth(context)),
                                      const SizedBox(height: 20),
                                      Center(
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Exam1()));
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 30),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                  color: Colors.black,
                                                ),
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      SvgIcon(
                                                          icon:
                                                              ImageUtil.audio),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "Audio",
                                                        style: FontUtil.font16M(
                                                            color:
                                                                Colors.white),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                            const SizedBox(width: 12),
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Exam1()));
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10,
                                                    horizontal: 30),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                  color: ColorUtil.primaryColor,
                                                ),
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      SvgIcon(
                                                          icon: ImageUtil
                                                              .videosvg),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "Video",
                                                        style: FontUtil.font16M(
                                                            color:
                                                                Colors.white),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
