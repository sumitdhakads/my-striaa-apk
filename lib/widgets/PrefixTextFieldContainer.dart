import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/image.dart';

class PrefixTextFieldContainer extends StatefulWidget {
  const PrefixTextFieldContainer(
      {super.key,
        required this.title,
        required this.hintText,
        required this.prefixicon,
        this.textEditingController});

  final String title;
  final String hintText;
  final SvgIcon prefixicon;
  final TextEditingController? textEditingController;

  @override
  State<PrefixTextFieldContainer> createState() => _PrefixTextFieldContainerState();
}

class _PrefixTextFieldContainerState extends State<PrefixTextFieldContainer> {
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
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            // Only show border when focused
            border: _isFocused
                ? Border.all(
              color: ColorUtil.primaryColor, // Focused border color
              width: 1, // Border thickness when focused
            )
                : Border.all(
              color: Colors.transparent, // No border when not focused
              width: 0, // No thickness when not focused
            ),
          ),
          child: TextField(
            focusNode: _focusNode,
            decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: widget.prefixicon,
                ),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
                hintText: widget.hintText,
                hintStyle: FontUtil.font12N(color: ColorUtil.textLightGrey),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
