import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14,
      width: 0.5,
      color: ColorUtil.textLightGrey,
    );
  }
}
