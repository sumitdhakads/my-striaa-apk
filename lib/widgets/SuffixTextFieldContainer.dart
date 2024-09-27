import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/image.dart';

class SuffixTextFieldContainer extends StatefulWidget {
  const SuffixTextFieldContainer({
    super.key,
    required this.title,
    required this.hintText,
    required this.suffixicon,
    this.textEditingController,
  });

  final String title;
  final String hintText;
  final SvgIcon suffixicon;
  final TextEditingController? textEditingController;

  @override
  State<SuffixTextFieldContainer> createState() => _SuffixTextFieldContainerState();
}

class _SuffixTextFieldContainerState extends State<SuffixTextFieldContainer> {
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
            focusNode: _focusNode, // Attach the FocusNode to the TextField
            controller: widget.textEditingController,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: widget.suffixicon,
              ),
              hintText: widget.hintText,
              hintStyle: FontUtil.font12N(color: ColorUtil.textLightGrey),
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
            ),
            textAlignVertical: TextAlignVertical.center, // Centers text vertically
          ),
        ),
      ],
    );
  }
}
