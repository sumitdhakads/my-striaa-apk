import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/font_util.dart';

class BorderedButton extends StatelessWidget {
  const BorderedButton({super.key, this.text, required this.onPressed, this.color,this.textColor,this.border});
  final String? text;
  final Color? color;
  final VoidCallback onPressed;
  final Color? textColor;
  final double? border;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: appwidth(context),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,  // Border color
              width: (border ?? 0),           // Border width
            ),
            borderRadius: BorderRadius.circular(40),
          ),

        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(text ?? "",
            style: FontUtil.font16M(
                color: textColor ?? Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
