import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';

class Smallbuttton extends StatelessWidget {
  const Smallbuttton({super.key,required this.text,required this.color,required this.onPressed,this.textColor,this.fontstyle
  ,this.verpadding,this.horpadding,this.elevation});

  final String text;
  final Color color;
  final VoidCallback onPressed;
  final Color? textColor;
  final TextStyle? fontstyle;
  final  double? verpadding;
  final  double? horpadding;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: color,
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: (verpadding ?? 10),horizontal: horpadding ?? 0 ),
        child: Text(text ?? "",
          style: fontstyle ??   FontUtil.font12SB(color: Colors.white),
        ),
      ),
    );
  }
}
