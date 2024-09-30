import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> items; // List of dropdown items
  final String? selectedValue; // Currently selected value
  final ValueChanged<String?> onChanged; // Callback function

  CustomDropdown({
    required this.items,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        icon: SvgIcon(
          icon: ImageUtil.downicon,
        ),
        decoration: InputDecoration(
          border: InputBorder.none, // No underline or border
        ),
        style: FontUtil.font14M(color: Colors.black),
        onChanged: onChanged, // Trigger the callback when value changes
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}