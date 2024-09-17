import 'package:flutter/material.dart';
import 'package:striaa/pages/nearbydoctor.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Doctor3 extends StatelessWidget {
  const Doctor3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newdr3,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => NearByDoctor()));
      },borderradius: 0,)),
    );
  }
}
