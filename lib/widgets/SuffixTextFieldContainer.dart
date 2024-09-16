import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/image.dart';

class SuffixTextFieldContainer extends StatelessWidget {
  const SuffixTextFieldContainer(
      {super.key,
        required this.title,
        required this.hintText,
        required this.suffixicon,
        this.textEditingController});

  final String title;
  final String hintText;
  final SvgIcon suffixicon;
  final TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: FontUtil.font14SB(),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: TextField(
            decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: suffixicon,
                ),
                hintText: hintText,
                hintStyle: FontUtil.font12N(color: ColorUtil.textLightGrey),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}