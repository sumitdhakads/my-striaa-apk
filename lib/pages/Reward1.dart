import 'package:flutter/material.dart';
import 'package:striaa/pages/Reward2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Reward1 extends StatelessWidget {
  const Reward1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Magicalbox(image: ImageUtil.redeem1,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Reward2()));
      },
      borderradius: 40,
      ),
    );
  }
}
