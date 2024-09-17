import 'package:flutter/material.dart';
import 'package:striaa/pages/doctor3.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Doctor2 extends StatelessWidget {
  const Doctor2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newdr2,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Doctor3()));
      },borderradius: 0,)),
    );
  }
}
