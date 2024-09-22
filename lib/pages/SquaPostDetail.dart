import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/line.dart';

class SquaPostDetail extends StatelessWidget {
  const SquaPostDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(// Light pink background
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          leading: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: SvgIcon(
                  icon: ImageUtil.left,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: ImageWidget(
                      image: ImageUtil.useraccount,
                      height: 44,
                      width: 44,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Major S. Depriest",
                        style: FontUtil.font14SB(),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "30 Dec, 2023",
                        style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium",
                style: FontUtil.font16SB(),
              ),
              SizedBox(height: 10),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                    " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                    "nisi ut aliquip ex ea commodo consequat.",
                style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Container(
                height: 220,
                width: double.infinity, // Ensuring it takes up full width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: AssetImage(ImageUtil.one),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ImageWidget(
                    image: ImageUtil.commentpng,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "100 comments",
                    style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                  ),
                  SizedBox(width: 5),
                  Line(),
                  SizedBox(width: 5),
                  ImageWidget(
                    image: ImageUtil.likepng,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "250 likes",
                    style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                  ),
                ],
              ),
              SizedBox(height: 20),
              DashedLine(width: double.infinity), // Ensuring full width here
              SizedBox(height: 30),
              // Comment Input Section
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: ImageWidget(
                      image: ImageUtil.useraccount,
                      height: 44,
                      width: 44,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 44,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          ImageWidget(
                            image: ImageUtil.smilepng,
                          ),
                          SizedBox(width: 11),
                          ImageWidget(
                            image: ImageUtil.attachementpng,
                          ),
                          SizedBox(width: 13),
                          Line(),
                          SizedBox(width: 13),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Add a comment",
                                hintStyle: FontUtil.font12N(
                                    color: ColorUtil.textLightGrey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          ImageWidget(
                            image: ImageUtil.sendicon,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              // All comments header
              Text(
                "All Comments",
                style: FontUtil.font16B(),
              ),
              SizedBox(height: 22),
              // Comment
              Column(
                children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: ImageWidget(
                              image: ImageUtil.accountcomment,
                              height: 44,
                              width: 44,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Major S. Depriest",
                                    style: FontUtil.font14SB(),
                                  ),
                                  Text(
                                    "15 min",
                                    style: FontUtil.font12N(
                                        color: ColorUtil.textLightGrey),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6),
                              Text(
                                "Sed ut perspiciatis unde omnis iste rem natus error sit "
                                    "voluptatem accusantium doloremque laudantium, totam rem aperiam.",
                                style: FontUtil.font12N(
                                    color: ColorUtil.textLightGrey),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  ImageWidget(
                                    image: ImageUtil.likepng,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "250 likes",
                                    style: FontUtil.font12N(
                                        color: ColorUtil.textLightGrey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
