import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key,required this.context,required this.username,required this.postImage,required this.onTap});

  final BuildContext context;
  final String postImage;
  final String username;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Row with Avatar and Name
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(ImageUtil.useraccount),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: FontUtil.font14M(),
                    ),
                    Text(
                      '30 Dec, 2023',
                      style:FontUtil.font12M(color: ColorUtil.textLightGrey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            // Post Content
            Text(
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium",
              style:FontUtil.font14M(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),

            // Post Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                postImage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180,
              ),
            ),
            SizedBox(height: 10),

            // Comments and Likes buttons
            Row(
              children: [
                SvgIcon(icon: ImageUtil.commentsvg),
                SizedBox(width: 5),
                Text(
                  "Comments",
                  style:FontUtil.font12M(color: ColorUtil.textLightGrey),
                ),
                SizedBox(width: 20),
                SvgIcon(icon: ImageUtil.likesvg),
                SizedBox(width: 5),
                Text(
                  "Likes",
                  style:FontUtil.font12M(color: ColorUtil.textLightGrey),
                ),
              ],
            ),
          ],
        ),
      ),
    );;
  }
}
