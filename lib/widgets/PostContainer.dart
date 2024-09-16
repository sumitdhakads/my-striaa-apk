import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';

class Postcontainer extends StatelessWidget {
  const Postcontainer({super.key,required this.image,required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
            bottom: 12,
            child: Text(
              text,
              style: FontUtil.font14B(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
