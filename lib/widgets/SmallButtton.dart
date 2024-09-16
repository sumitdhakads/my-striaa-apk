import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';

class Smallbuttton extends StatelessWidget {
  const Smallbuttton({super.key,required this.text,required this.color,required this.onPressed,this.textColor});

  final String text;
  final Color color;
  final VoidCallback onPressed;
  final Color? textColor;

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
          style: FontUtil.font12SB(color: Colors.white),
        ),
      ),
    );
  }
}
