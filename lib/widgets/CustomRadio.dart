import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';

class CustomRadioButton extends StatelessWidget {
  final String title;
  final String value;
  final String? groupValue;
  final Function(String?) onChanged;

  CustomRadioButton({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check if the current value is selected
    bool isSelected = value == groupValue;

    return GestureDetector(
      onTap: () {
        onChanged(value); // Call the onChanged function with the value
      },
      child: Row(
        children: <Widget>[
          Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? ColorUtil.primaryColor : ColorUtil.textLightGrey,
                width: isSelected ? 2.0 : 0.5,
              ),
            ),
            child: isSelected
                ? Center(
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorUtil.primaryColor, // Filled when selected
                ),
              ),
            )
                : SizedBox(), // Empty when not selected
          ),
          SizedBox(width: 12), // Space between the circle and the text
          Expanded(
            child: Text(
              title,
              style: isSelected
                  ? FontUtil.font16SB() // Bold when selected
                  : FontUtil.font16N(color: ColorUtil.textLightGrey), // Normal otherwise
            ),
          ),
        ],
      ),
    );
  }
}
