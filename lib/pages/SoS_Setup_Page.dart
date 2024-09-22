import 'package:flutter/material.dart';
import 'package:striaa/pages/Sos1.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/name&phoneContainer.dart';

class SosSetupPage extends StatelessWidget {
  const SosSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "Set up SOS",
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        children: [
          SizedBox(
            height: 30,
          ),
          Namephonecontainer(title: "Contact 1"),
          SizedBox(
            height: 15,
          ),
          DashedLine(width: MediaQuery.of(context).size.width),
          SizedBox(
            height: 15,
          ),
          Namephonecontainer(title: "Contact 2"),
          SizedBox(
            height: 15,
          ),
          DashedLine(width: MediaQuery.of(context).size.width),
          SizedBox(
            height: 15,
          ),
          Namephonecontainer(title: "Contact 3"),
          SizedBox(
            height: 15,
          ),
          DashedLine(width: MediaQuery.of(context).size.width),
          SizedBox(
            height: 15,
          ),
          Text(
            "Add emergency message",
            style: FontUtil.font18SB(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your message",
                  border: InputBorder.none,
                  hintStyle: FontUtil.font12N(color: ColorUtil.textLightGrey)
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: ButtonWidget(
            onPressed: () {
              // Handle continue button press
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Sos1()));
            },
            color: Theme.of(context).primaryColor,
            text: 'Continue',
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
