import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';

class Postcontainer extends StatelessWidget {
  const Postcontainer({super.key,required this.image,required this.text,this.onTap});

  final String image;
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
