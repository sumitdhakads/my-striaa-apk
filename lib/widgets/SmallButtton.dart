import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';

class Smallbuttton extends StatelessWidget {
  const Smallbuttton({super.key,required this.text,required this.color,required this.onPressed,this.textColor,this.fontstyle});

  final String text;
  final Color color;
  final VoidCallback onPressed;
  final Color? textColor;
  final TextStyle? fontstyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(text ?? "",
          style: fontstyle ??   FontUtil.font12SB(color: Colors.white),
        ),
      ),
    );
  }
}
