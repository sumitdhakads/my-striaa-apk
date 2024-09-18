import 'package:flutter/material.dart';
import 'package:striaa/pages/Reward1.dart';
import 'package:striaa/pages/doctor1.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newcongrats,onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => Doctor1()));
     },)),
    );
  }
}
