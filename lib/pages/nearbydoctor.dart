import 'package:flutter/material.dart';
import 'package:striaa/pages/doctor_detail.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/magicalbox.dart';

class NearByDoctor extends StatelessWidget {
  const NearByDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newnearby,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetail()));
      },)),
    );
  }
}
