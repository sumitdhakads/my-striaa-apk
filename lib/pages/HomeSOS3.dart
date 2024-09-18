import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Homesos3 extends StatelessWidget {
  const Homesos3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Magicalbox(
        image: ImageUtil.thirdsos,
        onPressed: (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StriaaPage()),(route) => false);
        },borderradius:40,
      ),
    );;
  }
}
