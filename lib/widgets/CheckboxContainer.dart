import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/newcheckbox.dart';

class Checkboxcontainer extends StatefulWidget {
  const Checkboxcontainer({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final Function(bool?) onChanged;

  @override
  State<Checkboxcontainer> createState() => _CheckboxcontainerState();
}

class _CheckboxcontainerState extends State<Checkboxcontainer> {
  void _toggleCheckbox() {
    setState(() {
      widget.onChanged(!widget.value); // Toggle the checkbox state
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleCheckbox, // Toggle the checkbox when container is tapped
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: widget.value
                ? ColorUtil.primaryColor
                : Colors.transparent, // Pink border when checked, transparent otherwise
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            // Checkbox will also toggle when container is tapped
            NewCustomCheckbox(value: widget.value, onChanged: widget.onChanged),
            SizedBox(width: 10,),
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
