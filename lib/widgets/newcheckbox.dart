import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class NewCustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const NewCustomCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _NewCustomCheckboxState createState() => _NewCustomCheckboxState();
}

class _NewCustomCheckboxState extends State<NewCustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged?.call(!widget.value);
      },
      child: Container(
        padding: EdgeInsets.all(1),
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          color: widget.value ? ColorUtil.primaryColor : Colors.transparent, // Active color based on state
          borderRadius: BorderRadius.circular(5), // Custom border radius
          border: Border.all(
            color: widget.value ? ColorUtil.primaryColor : Colors.black, // Dynamic border color
            width: 0.5, // Reduced border width
          ),
        ),
        child: widget.value
            ? SvgIcon(icon: ImageUtil.ticksvg) // Show check icon when checked
            : null, // No icon when unchecked
      ),
    );
  }
}
