import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:striaa/pages/DoctorConsult.dart';
import 'package:striaa/pages/SearchTapTwo.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/onTap.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/BlogContainer.dart';
import 'package:striaa/widgets/PostContainer.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 51),
              child: ImageWidget(
                image: ImageUtil.congratspng,
              ),
            ),
            SizedBox(height: 27),
            Center(
                child: Text(
              "Congratulations!",
              style: FontUtil.font26SB(height: 1.38),
            )),
            SizedBox(
              height: 5,
            ),
            Center(
                child: Text("You have not been detected to anything",
                    style: FontUtil.font14N(color: ColorUtil.textLightGrey))),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorConsult()));
              },
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: ColorUtil.primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Date of Check up",
                      style: FontUtil.font14N(color: Color(0xFFFFFFFF)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "20 Dec,2023",
                      style: FontUtil.font14SB(color: Color(0xFFFFFFFF)),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left column for text
                Expanded(
                  flex: 2, // Give this flex to allocate 2 parts of the row to the text
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rewards Points", style: FontUtil.font20SB()),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem.",
                        style: FontUtil.font12M(color: ColorUtil.textLightGrey),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          color: Colors.black,
                        ),
                        child: Text(
                          "Claim",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                // Image points container
                Expanded(
                  flex: 2, // Give this flex to allocate 1 part of the row to the image
                  child: Image.asset(
                    height: 200,
                    ImageUtil.newtenpoints,
                    fit: BoxFit.cover, // Make the image cover its entire space
                  ),
                ),
              ],
            ),
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
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
                      style: FontUtil.font26SB(color: Colors.white,height: 1.38),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchTapTwo()));
              },
              child: Blogcontainer(
                image: ImageUtil.three,
                date: "18 Dec, 2023",
                title: "Sed ut perspiciatis unde",
                subtitle: "Carter Street Fairview Heights...",
                btntext: "Interested",
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Ontap()));
              },
              child: Postcontainer(
                image: ImageUtil.one,
                text: "Sed ut perspicitis iste natus unde error..",
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchTapTwo()));
              },
              child: Blogcontainer(
                image: ImageUtil.four,
                date: "18 Dec, 2023",
                title: "Sed ut perspiciatis unde",
                subtitle: "Carter Street Fairview Heights...",
                btntext: "Interested",
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorUtil.secondaryColor,
        child:ButtonWidget(
            onPressed: () {
              // Handle continue button press
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StriaaPage()));
            },
            color: Colors.white,
            text: 'Back to home',
            textColor: ColorUtil.textLightGrey,
        ),
      ),
    );
  }
}
