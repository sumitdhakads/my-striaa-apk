import 'package:flutter/material.dart';
import 'package:striaa/pages/Reward3.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Reward2 extends StatelessWidget {
  const Reward2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Magicalbox(image: ImageUtil.redeem2,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Reward3()));
      },
      borderradius: 40,
      ),
    );
  }
}
