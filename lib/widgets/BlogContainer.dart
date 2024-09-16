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
      required this.btntext});

  final String image;
  final String date;
  final String title;
  final String subtitle;
  final String btntext;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                date,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
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
                        style: FontUtil.font14B(),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.location_on, size: 16, color: Colors.pink),
                          SizedBox(width: 4),
                          Text(subtitle,
                              style: FontUtil.font12N(
                                  color: ColorUtil.textLightGrey)),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorUtil.primaryColor,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8), // Reduced padding
                    ),
                    child: Text(
                      btntext,
                      style: FontUtil.font12SB(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
