import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/image_util.dart';

class Magicalbox extends StatelessWidget {
  const Magicalbox({super.key,required this.image,required this.onPressed,this.borderradius});
  final double? borderradius;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: SafeArea(
            child: SizedBox(
                width: appwidth(context),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(borderradius ??  100),
                child: Image.asset(image, fit: BoxFit.fill)))));
  }
}
