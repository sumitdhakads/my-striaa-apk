import 'package:flutter/material.dart';
import 'package:striaa/pages/doctor2.dart';
import 'package:striaa/pages/faq2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Faq1 extends StatelessWidget {
  const Faq1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newfaq1,onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => Faq2()));
      },)),
    );
  }
}
