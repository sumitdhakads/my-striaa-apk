import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/SmallButtton.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class SearchTapTwo extends StatelessWidget {
  const SearchTapTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar for the image and back button
          SliverAppBar(
            expandedHeight: 300.0, // Height of the image
            pinned: true, // Pin the AppBar when it collapses
            backgroundColor:
            ColorUtil.secondaryColor, // Background color when collapsed
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  image: DecorationImage(
                    image: AssetImage(ImageUtil.newthree),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              collapseMode: CollapseMode.parallax,
            ),
            // Back button in the AppBar
            leadingWidth: 80,
            leading: IconButton(
              icon: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 0.5, color: Colors.white),
                ),
                child: SvgIcon(icon: ImageUtil.leftwhiteicon),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          // SliverList for the content after the image
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 20),
                // Content section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem",
                              style: FontUtil.font20SB(),
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                SvgIcon(icon: ImageUtil.calendarsvg),
                                SizedBox(width: 10),
                                Text(
                                  "29 Dec, 2023",
                                  style: FontUtil.font14N(
                                      color: ColorUtil.textLightGrey),
                                ),
                                SizedBox(width: 12),
                                SvgIcon(icon: ImageUtil.locationsvg),
                                SizedBox(width: 10),
                                Text(
                                  "Carter Street , IL",
                                  style: FontUtil.font14N(
                                      color: ColorUtil.textLightGrey),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Smallbuttton(
                              text: "Interested",
                              color: ColorUtil.primaryColor,
                              onPressed: () {},
                            ),
                            SizedBox(height: 25),
                            DashedLine(width: appwidth(context)),
                            SizedBox(height: 25),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                                  " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                  " Ut enim ad minim veniam, quis nostrud exercitation ullamco"
                                  " laboris nisi ut aliquip ex ea commodo consequat.",
                              style: FontUtil.font14N(
                                  color: ColorUtil.textLightGrey),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem"
                                  " accusantium doloremque laudantium, totam rem aperiam, eaque ipsa "
                                  "quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                              style: FontUtil.font14N(
                                  color: ColorUtil.textLightGrey),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 300),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
