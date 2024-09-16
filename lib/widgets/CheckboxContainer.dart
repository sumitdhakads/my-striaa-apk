import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';

class Checkboxcontainer extends StatefulWidget {
  const Checkboxcontainer(
      {super.key,
      required this.title,
      required this.value,
      required this.onChanged});

  final String title;
  final bool value;
  final Function(bool?) onChanged;

  @override
  State<Checkboxcontainer> createState() => _CheckboxcontainerState();
}

class _CheckboxcontainerState extends State<Checkboxcontainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.onChanged(!widget.value); // Toggle the checkbox state
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: widget.value
                ? ColorUtil.primaryColor
                : Colors
                    .transparent, // Pink border when checked, transparent otherwise
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Checkbox(
              value: widget.value,
              activeColor: ColorUtil.primaryColor,
              onChanged: widget.onChanged,
            ),
            Expanded(
              child: Text(
                widget.title,
                style: widget.value
                    ? FontUtil.font16SB()
                    : FontUtil.font16N(color: ColorUtil.textLightGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
