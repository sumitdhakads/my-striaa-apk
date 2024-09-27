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
      decoration: BoxDecoration(
        color: ColorUtil.primaryColor
            .withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.topLeft,
        widthFactor: progress, // Adjust this for actual progress percentage
        child: Container(
          decoration: BoxDecoration(
            color: ColorUtil.primaryColor,//Actual Progress  
            borderRadius: BorderRadius.circular(5)
          ),
          
        ),
      ),
    );
  }
}
