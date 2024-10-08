import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/DoctorCard.dart';
import 'package:striaa/widgets/image.dart';

class AllDoctor extends StatelessWidget {
  const AllDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Nearby Doctors",
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: ListView(
          children: [
            SizedBox(height: 15,),
            DoctorCard(image: ImageUtil.dr,name: "Julie Colvin",),
            SizedBox(height: 15,),
            DoctorCard(name: "Julie Colvin",image: ImageUtil.newdr2,),
            SizedBox(height: 15,),
            DoctorCard(name: "Julie Colvin",image: ImageUtil.newdr3,),
            SizedBox(height: 15,),
            DoctorCard(name:  "Julie Colvin", image: ImageUtil.dr,),
            SizedBox(height: 15,),
            DoctorCard(image: ImageUtil.dr,name: "Julie Colvin",),
            SizedBox(height: 15,),
            DoctorCard(name: "Julie Colvin",image: ImageUtil.newdr2,),
            SizedBox(height: 15,),
            DoctorCard(name: "Julie Colvin",image: ImageUtil.newdr3,),
            SizedBox(height: 15,),
            DoctorCard(name:  "Julie Colvin", image: ImageUtil.dr,),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
