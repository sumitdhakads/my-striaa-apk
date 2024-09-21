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
      extendBodyBehindAppBar: true,  // Allows the body to extend behind the transparent app bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,  // Transparent app bar
        elevation: 0,  // No shadow
        automaticallyImplyLeading: false,  // Custom back button instead of the default
        flexibleSpace: Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: statusBarHeight + 10,  // Add padding to account for the status bar height and some space
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: ImageWidget(
                    image: ImageUtil.whitebackpng,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          children: [
            // Image container
            Container(
              height: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                  image: AssetImage(ImageUtil.newthree
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 27),
            // Content section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            ImageWidget(image: ImageUtil.datepng),
                            SizedBox(width: 10),
                            Text(
                              "29 Dec, 2023",
                              style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                            ),
                            SizedBox(width: 12,),
                            ImageWidget(image: ImageUtil.locationpng,),
                            Text("Carter Street , IL",style: FontUtil.font14N(color: ColorUtil.textLightGrey),),
                          ],
                        ),
                        SizedBox(height: 12),
                        Smallbuttton(text: "Interesetd", color: ColorUtil.primaryColor, onPressed: (){}),
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
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}