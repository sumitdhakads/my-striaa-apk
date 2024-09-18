import 'package:flutter/material.dart';
import 'package:striaa/pages/doctor2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Doctor1 extends StatelessWidget {
  const Doctor1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newdr1,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Doctor2()));
      },borderradius: 35,)),
    );
  }
}
