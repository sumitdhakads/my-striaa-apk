import 'package:flutter/material.dart';
import 'package:striaa/pages/CreatePost.dart';
import 'package:striaa/pages/SquaPostDetail.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/image.dart';

class MainStriSquad extends StatelessWidget {
  const MainStriSquad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "StriSquad",
          leading: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StriaaPage()),(route) => false);
                },
                child: CircleAvatar(
                  child: SvgIcon(
                    icon: ImageUtil.left,
                  ),
                ),
              ),
            ],
          ),
          action: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePost()));
            },
            child: CircleAvatar(
              backgroundColor: ColorUtil.primaryColor,
              child: ImageWidget(
                image: ImageUtil.pencilpng,
              )
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 15),
              // Post Card 1 with Image 1
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SquaPostDetail()));
                  },
                  child: postCard(context, ImageUtil.one, "Major S. Depriest",(){


                  })),
              SizedBox(height: 15),
              // Post Card 2 with Image 2
              InkWell(
                  onTap: (){
                  },
                  child: postCard(context, ImageUtil.two, "Major S. Depriest",(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SquaPostDetail()));
                  })),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  // Post Card Widget
  Widget postCard(BuildContext context, String postImage, String username,VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
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
                      style: FontUtil.font16SB(),
                    ),
                    Text(
                      '30 Dec, 2023',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            // Post Content
            Text(
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
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
                Icon(Icons.comment_outlined, size: 18, color: Colors.grey),
                SizedBox(width: 5),
                Text(
                  "Comments",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.thumb_up_alt_outlined, size: 18, color: Colors.grey),
                SizedBox(width: 5),
                Text(
                  "Likes",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
