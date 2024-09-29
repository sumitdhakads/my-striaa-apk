import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
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
      child: Row(
        children: [
          SvgIcon(icon: ImageUtil.searchicon),
          SizedBox(width: 15,),
          Expanded(
            child: TextField(
              focusNode: _focusNode,
                decoration: InputDecoration(
                    hintText: "Search..",
                    hintStyle: FontUtil.font14N(color: ColorUtil.textLightGrey),
                    border: InputBorder.none
                )
            ),
          ) ,
        ],
      ),
    );
  }
}
