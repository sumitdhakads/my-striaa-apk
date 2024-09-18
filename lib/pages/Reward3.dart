import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Reward3 extends StatelessWidget {
  const Reward3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        height: appHeight(context),
        child: Magicalbox(image: ImageUtil.redeem3,onPressed: (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StriaaPage()),(route) => false);
        },
        borderradius: 40,
        ),
      ),
    );
  }
}
