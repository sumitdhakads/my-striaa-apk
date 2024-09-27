import 'package:flutter/material.dart';
import 'package:striaa/pages/SoS_Setup_Page.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/ContactCard.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';

class SosContactPage extends StatelessWidget {
  const SosContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Contact",
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            // Contact 1
            ContactCard(
              contactNumber: "1",
              name: "Samuel A. Leach",
              phoneNumber: "+1 9876543210",
            ),
            SizedBox(height: 15),

            // Contact 2
            ContactCard(
              contactNumber: "2",
              name: "Carrie E. McLellan",
              phoneNumber: "+1 9876543210",
            ),
            SizedBox(height: 15),

            // Add new contact button
            TextButton.icon(
              onPressed: () {
                // Add contact functionality
                Navigator.push(context, MaterialPageRoute(builder: (context) => SosSetupPage()));
              },
              icon: Icon(Icons.add, color: ColorUtil.primaryColor,size: 20,),
              label: Text(
                "Add new contact",
                style: FontUtil.font14M(color: ColorUtil.primaryColor),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              ),
            ),


            SizedBox(height: 20),
            DashedLine(width: double.infinity),
            SizedBox(height: 20),

            // Emergency message section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Emergency message",
                  style: FontUtil.font16SB(),
                ),
                SvgIcon(icon: ImageUtil.greypencil)
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 17,horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                    " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                    " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi"
                    " ut aliquip ex ea commodo consequat.",
                style: FontUtil.font12M(),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
