import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Reward3 extends StatelessWidget {
  const Reward3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.rewards3,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => StriaaPage()));
      },
      borderradius: 40,
      )),
    );
  }
}
