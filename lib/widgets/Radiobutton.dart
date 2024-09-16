import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';

class RadioButtonWidget extends StatelessWidget {
  final String title;
  final String value;
  final String? groupValue;
  final Function(String?) onChanged;

  const RadioButtonWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Row(
        children: [
          Radio<String>(
            value: value,
            groupValue: groupValue,
            activeColor: ColorUtil.primaryColor,
            onChanged: onChanged,
          ),
          Expanded(
            child: Text(
              title,
              style: groupValue == value
                  ? FontUtil.font16SB() // Bold when selected
                  : FontUtil.font16N(color: ColorUtil.textLightGrey), // Normal otherwise
            ),
          ),
        ],
      ),
    );
  }
}
