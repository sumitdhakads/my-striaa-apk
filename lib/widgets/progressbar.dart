import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key,required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.0,
      width: double.infinity,
      color: ColorUtil.primaryColor
          .withOpacity(0.5), // Light pink progress background
      child: FractionallySizedBox(
        alignment: Alignment.topLeft,
        widthFactor: progress, // Adjust this for actual progress percentage
        child: Container(
          color: ColorUtil.primaryColor, // Actual progress
        ),
      ),
    );
  }
}
