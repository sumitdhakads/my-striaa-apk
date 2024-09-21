import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/BlogContainer.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/image.dart';

class SecondSearch extends StatelessWidget {
  const SecondSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(
          title: "What, When, Where?",
          leading: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  child: SvgIcon(
                    icon: ImageUtil.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: ListView(
          children: [
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  SvgIcon(icon: ImageUtil.searchicon),
                  SizedBox(width: 15,),
                  Text("Search..",style: FontUtil.font14N(color: ColorUtil.textLightGrey),)
                ],
              ),
            ),
            SizedBox(height: 25,),
            Blogcontainer(
              image: ImageUtil.three,
              date: "18 Dec, 2023",
              title: "Sed ut perspiciatis unde",
              subtitle: "Carter Street Fairview Heights...",
              btntext: "Interested",
            ),
            SizedBox(height: 15,),
            Blogcontainer(
              image: ImageUtil.four,
              date: "18 Dec, 2023",
              title: "Sed ut perspiciatis unde",
              subtitle: "Carter Street Fairview Heights...",
              btntext: "Interested",
            ),
            SizedBox(height: 15,),
            Blogcontainer(
              image: ImageUtil.three,
              date: "18 Dec, 2023",
              title: "Sed ut perspiciatis unde",
              subtitle: "Carter Street Fairview Heights...",
              btntext: "Interested",
            ),
            SizedBox(height: 15,),
            Blogcontainer(
              image: ImageUtil.four,
              date: "18 Dec, 2023",
              title: "Sed ut perspiciatis unde",
              subtitle: "Carter Street Fairview Heights...",
              btntext: "Interested",
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
