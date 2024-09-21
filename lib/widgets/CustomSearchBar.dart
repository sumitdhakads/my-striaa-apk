import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white
      ),
      child: Row(
        children: [
          SvgIcon(icon: ImageUtil.searchicon),
          SizedBox(width: 15,),
          Expanded(
            child: TextField(
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
