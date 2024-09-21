import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/image.dart';

class SquaPostDetail extends StatelessWidget {
  const SquaPostDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: CustomAppbar(
            leading: Row(
              children: [
                CircleAvatar(
                  child: SvgIcon(
                    icon: ImageUtil.left,
                  ),
                )
              ],
            ),
          ),
        ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(35)
                      ,child: ImageWidget(image: ImageUtil.useraccount,
                  height: 44,
                  width: 44,
                  )
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Major S. Depriest",style: FontUtil.font14SB(),),
                      SizedBox(height: 5,),
                      Text("30 Dec, 2023",style: FontUtil.font12N(color: ColorUtil.textLightGrey),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium",style: FontUtil.font16SB(),),
            SizedBox(height: 10,),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                "nisi ut aliquip ex ea commodo consequat.",
              style: FontUtil.font14N(color: ColorUtil.textLightGrey),
            ),
            SizedBox(height: 20,),
           Container(
             height: 220,
             width: appwidth(context),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(18),
               image: DecorationImage(
                 image: AssetImage(ImageUtil.one),
                 fit: BoxFit.cover
               )
             ),
           )
          ],
        ),
      ),
    );
  }
}
