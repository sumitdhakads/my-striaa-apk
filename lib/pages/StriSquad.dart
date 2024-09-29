import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:striaa/pages/CreatePost.dart';
import 'package:striaa/pages/SquaPostDetail.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/PostCard.dart';
import 'package:striaa/widgets/TweetCard.dart';
import 'package:striaa/widgets/image.dart';

class MainStriSquad extends StatelessWidget {
  const MainStriSquad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "StriSquad",
        action: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorUtil.primaryColor,
              shape: BoxShape.circle
            ),
            child: SvgIcon(icon: ImageUtil.editsvg,),
          ),
        ),
        actiononTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePost()));
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 15),
              // Post Card 1 with Image 1
              PostCard(context: context, username: "Major S. Depriest", postImage: ImageUtil.one, onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SquaPostDetail()));
              }),
              SizedBox(height: 15),
              //Tweet one
              TweetCard(context: context, username: "Major S. Depriest"),
              // Post Card 2 with Image 2
              SizedBox(height: 15),
              PostCard(context: context, username: "Major S. Depriest", postImage: ImageUtil.two, onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SquaPostDetail()));
              }),
              SizedBox(height: 15),
              //Tweet two
              TweetCard(context: context, username: "Major S. Depriest"),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
