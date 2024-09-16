import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value ?? false;
        });
      },
      activeColor: ColorUtil.primaryColor, // Active color
      checkColor: Colors.white, // Color of the checkmark
      shape: RoundedRectangleBorder(
        // Custom shape
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
