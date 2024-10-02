import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class Ontap extends StatelessWidget {
  const Ontap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar implementation similar to Doctordetail
          SliverAppBar(
            expandedHeight: 300.0, // Adjust as needed for the image height
            pinned: true, // Make sure the app bar stays visible when scrolling
            backgroundColor: ColorUtil.secondaryColor, // Background color when collapsed
            flexibleSpace: FlexibleSpaceBar(
              background: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    image: DecorationImage(
                      image: AssetImage(ImageUtil.one), // Your main image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              collapseMode: CollapseMode.parallax,
            ),
            leadingWidth: 80, // Adjust this to set space for the leading icon
            leading: IconButton(
              icon: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 0.5, color: Color(0xFF6A6C72)),
                ),
                child: SvgIcon(icon: ImageUtil.leftblacksvg), // Back button icon
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 0.5, color: Color(0xFF6A6C72)),
                  ),
                  child: SvgIcon(icon: ImageUtil.sharesvg), // Share button icon
                ),
                onPressed: () {
                  // Define share functionality here
                },
              ),
            ],
          ),

          // SliverList for the rest of the content
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 27),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(ImageUtil.useraccount),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Major S. Depriest",
                            style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                          ),
                          SizedBox(width: 12),
                          Container(
                            height: 20,
                            width: 0.5,
                            color: Colors.black,
                          ),
                          SizedBox(width: 12),
                          SvgIcon(icon: ImageUtil.calendarsvg),
                          SizedBox(width: 10),
                          Text(
                            "29 Dec, 2023",
                            style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem",
                        style: FontUtil.font20SB(),
                      ),
                      SizedBox(height: 25),
                      DashedLine(width: appwidth(context)),
                      SizedBox(height: 25),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                            " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                            " Ut enim ad minim veniam, quis nostrud exercitation ullamco"
                            " laboris nisi ut aliquip ex ea commodo consequat.",
                        style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem"
                            " accusantium doloremque laudantium, totam rem aperiam, eaque ipsa "
                            "quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                        style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 30),
                      // Ads banner section
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                ImageUtil.adbanner,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 20,
                              child: Text(
                                "Ads Banner",
                                style: FontUtil.font26SB(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 200),
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
