import 'package:flutter/material.dart';
import 'package:striaa/pages/HomeSOS3.dart';
import 'package:striaa/pages/Sos3.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Homesos2 extends StatelessWidget {
  const Homesos2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Magicalbox(
        image: ImageUtil.secondsos,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Homesos3()));
        },borderradius: 40,
      ),
    );;
  }
}
