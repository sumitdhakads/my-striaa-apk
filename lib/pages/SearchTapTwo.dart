import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/SmallButtton.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class SearchTapTwo extends StatelessWidget {
  const SearchTapTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top; // Get the height of the status bar

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          ListView(
            children: [
              // Image container
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 370,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset(ImageUtil.newthree,fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 27),
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
                                style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                              ),
                              SizedBox(width: 12),
                              SvgIcon(icon: ImageUtil.locationsvg),
                              SizedBox(width: 10),
                              Text("Carter Street , IL",style: FontUtil.font14N(color: ColorUtil.textLightGrey),),
                            ],
                          ),
                          SizedBox(height: 12),
                          Smallbuttton(text: "Interested", color: ColorUtil.primaryColor, onPressed: (){}),
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
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
          // AppBar buttons over the image
          Positioned(
            top: statusBarHeight + 10, // Place below the status bar
            left: 15,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 0.5,color: Colors.white)
                ),
                child: SvgIcon(
                  icon: ImageUtil.leftwhiteicon,
                ),
            ),
          ),
          ),
        ]
      ),
    );
  }
}
