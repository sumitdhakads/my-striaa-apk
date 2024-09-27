import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/image.dart';


class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Privacy Policy",
              style: FontUtil.font20SB(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
                  " eiusmod tempor incididunt ut labore et dolore magna aliqua."
                  " Ut enim ad minim veniam, quis nostrud exercitation ullamco"
                  " laboris nisi ut aliquip ex ea commodo consequat.",
              style: FontUtil.font14N(color: ColorUtil.textLightGrey),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium",
              style: FontUtil.font14N(color: ColorUtil.textLightGrey),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "• Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
                  "doloremque laudantium, totam rem aperiam, "
                  "eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
              style: FontUtil.font14N(color: ColorUtil.textLightGrey),
              textAlign: TextAlign.justify,
            ),
            Text(
              "• Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
                  " eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: FontUtil.font14N(color: ColorUtil.textLightGrey),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "• Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
                  " eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: FontUtil.font14N(color: ColorUtil.textLightGrey),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "• Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
                  "doloremque laudantium, totam rem aperiam, "
                  "eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
              style: FontUtil.font14N(color: ColorUtil.textLightGrey),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 160,),
          ],
        ),
      ),
    );
  }
}

