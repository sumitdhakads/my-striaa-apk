import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/BookmyShow.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/SmallButtton.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class Reward extends StatelessWidget {
  const Reward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "Reward",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ImageWidget(
                image: ImageUtil.rewardpng,
              ),
            ),
            Center(
                child: Text(
              "Current Rewards Points",
              style: FontUtil.font20SB(),
            )),
            Center(
                child: Text(
              "Sed ut perspiciatis unde omnis iste natus error",
              style: FontUtil.font14N(color: ColorUtil.textLightGrey),
            )),
            SizedBox(height: 25,),
            DashedLine(width: appwidth(context)),
            SizedBox(height: 25,),
            Text("Redeem rewards",style: FontUtil.font16SB(),),
            SizedBox(height: 20,),
            Bookmyshow(),
            SizedBox(height: 15,),
            Bookmyshow(),
            Bookmyshow(),
            SizedBox(height: 15,),
            Bookmyshow(),
            SizedBox(height: 15,),
            Bookmyshow(),
            SizedBox(height: 15,),
            Bookmyshow(),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
