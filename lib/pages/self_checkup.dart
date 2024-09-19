import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/widgets/button.dart';

class SelfCheckupPage extends StatefulWidget {
  const SelfCheckupPage({super.key});

  @override
  State<SelfCheckupPage> createState() => _SelfCheckupPageState();
}

class _SelfCheckupPageState extends State<SelfCheckupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: GestureDetector(
        onTap: (){
           showDialog(context: context, 
           builder: (context){
            return Stack(
              fit: StackFit.expand,
              children: [
                 BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 3.0, sigmaY: 3.0
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
                    margin:  EdgeInsets.symmetric(horizontal: leftRightAppPadding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(vertical:25, horizontal: leftRightAppPadding),
                    child: SizedBox(
                      child:Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // const Padding(
                            //     padding: EdgeInsets.only(top: 30.0, bottom: 20),
                            //     child: SvgIcon(
                            //       icon: 'assets/svg/verified.svg',
                            //     )),
                            const Text(
                              'Proceed Test with',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),
                            // Description
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 20.0),
                               child: Text(
                                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                                 maxLines: 2,
                                 textAlign: TextAlign.center,
                                 style:Theme.of(context).textTheme.bodySmall!.copyWith(
                                   color: ColorUtil.textLightGrey),
                               ),
                             ),
                            const SizedBox(height: 30),
                            Center(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: IconButtonWidget(
                                        text: 'Audio',
                                        color: Colors.black,
                                        leadingIcon: 'assets/svg/audio.svg',
                                        onPressed: () {
                                        }),
                                  ),
                                      const SizedBox(width: 12),
                                  Expanded(
                                    child: IconButtonWidget(
                                        text: 'Video',
                                        leadingIcon: 'assets/svg/video.svg',
                                        onPressed: () {

                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
              ],
            );
           });
        },
        child: Image.asset('assets/images/self_checkup_page.png'))),
    );
  }
}