import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/SmallButtton.dart';
import 'package:striaa/widgets/image.dart';

class Blogcontainer extends StatelessWidget {
  const Blogcontainer(
      {super.key,
      required this.image,
      required this.date,
      required this.title,
      required this.subtitle,
      required this.btntext,
      this.onTap});

  final String image;
  final String date;
  final String title;
  final String subtitle;
  final String btntext;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Date in the top-right corner
            Positioned(
              top: 5,
              right: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100), // Same as the container's border radius
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Control the amount of blur
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black26.withOpacity(0.3), // Slight transparency
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      date,
                      style: FontUtil.font12N(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            // Bottom container with text and button
            Positioned(
              bottom: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Event title and location
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: FontUtil.font14SB(),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.location_on, size: 16, color: Colors.pink),
                            SizedBox(width: 4),
                           SizedBox(
                             width: 193,
                             child: Text(subtitle,
                                    style: FontUtil.font12N(
                                        color: ColorUtil.textLightGrey),maxLines: 2,),
                           ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                      decoration: BoxDecoration(
                        color: ColorUtil.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(btntext,style: FontUtil.font12N(color: Colors.white),),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
