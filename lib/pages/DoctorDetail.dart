import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class Doctordetail extends StatelessWidget {
  const Doctordetail({super.key});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top; // Get the height of the status bar

    return Scaffold(
      backgroundColor: Colors.pink.shade50,  // Background to match design
      body: Stack(
        children: [
          // Scrollable content
          ListView(
            children: [
              // Image container
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  image: DecorationImage(
                    image: AssetImage(ImageUtil.drjullie),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Doctor's Info (Name, Rating, Icons)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Doctor's Name and Rating
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Dr. Julie Colvin",
                                style: FontUtil.font24SB()
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.orange, size: 18),
                                SizedBox(width: 5),
                                Text(
                                  "4.5 (20 reviews)",
                                  style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Call and Message Icons
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: ColorUtil.primaryColor,
                              child: SvgIcon(
                                icon: ImageUtil.whitephone,
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: ColorUtil.primaryColor,
                              child: SvgIcon(
                                icon: ImageUtil.whitecomment,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    DashedLine(width: appwidth(context)),
                    SizedBox(height: 25,),
                    // About Section
                    Text(
                      "About",
                      style:  FontUtil.font16SB(),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                          "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style:  FontUtil.font14N(color: ColorUtil.textLightGrey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "• Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
                      style:  FontUtil.font14N(color: ColorUtil.textLightGrey),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "• Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                        style:  FontUtil.font14N(color: ColorUtil.textLightGrey)
                    ),
                    SizedBox(height: 30),

                    // Location Section
                    Text(
                        "Location",
                        style:  FontUtil.font16SB()
                    ),
                    SizedBox(height: 12),
                    // Location Map
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(ImageUtil.locationimage),  // Placeholder for map preview image
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Icon(Icons.location_pin, color: ColorUtil.primaryColor, size: 40),
                      ),
                    ),
                    SizedBox(height: 25,),
                  ],
                ),
              ),
            ],
          ),
          // Static Back Button
          Positioned(
            top: statusBarHeight + 10, // Position the back button below the status bar
            left: 15,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.1),
                child: ImageWidget(
                  image: ImageUtil.blackbackpng,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
