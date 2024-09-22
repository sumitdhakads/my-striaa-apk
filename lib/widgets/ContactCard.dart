import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

// A widget to represent a contact card
class ContactCard extends StatelessWidget {
  final String contactNumber;
  final String name;
  final String phoneNumber;

  const ContactCard({
    Key? key,
    required this.contactNumber,
    required this.name,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Ensures everything aligns vertically
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "CONTACT $contactNumber",
                      style: FontUtil.font12N(color: ColorUtil.primaryColor),
                    ),
                    // Pencil and delete icon on the same line as "CONTACT"
                    Row(
                      children: [
                        ImageWidget(
                          image: ImageUtil.blackpencil,
                        ),
                        SizedBox(width: 12),
                        ImageWidget(
                          image: ImageUtil.deletepng,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  name,
                  style: FontUtil.font16SB(),
                ),
                SizedBox(height: 4),
                Text(
                  phoneNumber,
                  style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
