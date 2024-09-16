import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/magicalbox.dart';

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.doctordetail,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => StriaaPage()));
      },)),
    );
  }
}
