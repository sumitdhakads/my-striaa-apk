import 'package:flutter/material.dart';
import 'package:striaa/pages/Homesos2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Homesos1 extends StatelessWidget {
  const Homesos1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Magicalbox(
        image: ImageUtil.firstsos,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Homesos2()));
        },borderradius: 40,
      ),
    );;
  }
}
