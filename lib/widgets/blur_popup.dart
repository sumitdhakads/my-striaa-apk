import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/widgets/button.dart';

Future<dynamic> verifiedPopup(BuildContext context) {
  
  return showDialog(
      context: context,
      // backgroundColor: Colors.transparent,
      builder: (context) {
        return Material(
          color: Colors.transparent,
          child: Stack(
            children: [
              Positioned.fill(
                  child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [
                      0.1,
                      0.6,
                      1.0
                    ],
                            colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.8)
                    ]))),
              )),
              Positioned.fill(
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30)),
                ),
              )),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 308,
                  width: appwidth(context),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.black26.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: Colors.white12),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [
                            0,
                            0.5,
                            1.0
                          ],
                          colors: [
                            Colors.white.withOpacity(0.2),
                            Colors.transparent,
                            Colors.white.withOpacity(0.2)
                          ])),
                  child: SizedBox(
                    child: Column(
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
                           FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style:Theme.of(context).textTheme.bodySmall!.copyWith(
                                  color: ColorUtil.textLightGrey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Center(
                            child: Row(
                              children: [
                                ButtonWidget(
                                    text: 'Audio',
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }),
                                    const SizedBox(width: 12),
                                ButtonWidget(
                                    text: 'Video',
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
