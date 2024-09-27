import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';

class Textfieldcontainer extends StatefulWidget {
  const Textfieldcontainer({
    super.key,
    required this.title,
    required this.hintText,
    this.textEditingController,
  });

  final String title;
  final String hintText;
  final TextEditingController? textEditingController;

  @override
  _TextfieldcontainerState createState() => _TextfieldcontainerState();
}

class _TextfieldcontainerState extends State<Textfieldcontainer> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: FontUtil.font14M(),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            // Only show border when focused
            border: _isFocused
                ? Border.all(
              color: ColorUtil.primaryColor, // Focused border color
              width: 1, // Border thickness
            )
                : null, // No border when not focused
          ),
          child: TextField(
            focusNode: _focusNode,
            controller: widget.textEditingController,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: FontUtil.font12N(color: ColorUtil.textLightGrey),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
