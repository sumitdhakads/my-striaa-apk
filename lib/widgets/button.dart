import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.text, required this.onPressed, this.color});
  final String? text;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      child: Text(text ?? "",
      style: FontUtil.font16M(
        color: Colors.white
      ),
      ),
    );
  }
}