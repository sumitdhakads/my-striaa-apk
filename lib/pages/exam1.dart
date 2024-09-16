import 'package:flutter/material.dart';
import 'package:striaa/pages/Sos2.dart';
import 'package:striaa/pages/exam2.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Exam1 extends StatefulWidget {
  const Exam1({super.key});

  @override
  State<Exam1> createState() => _Exam1State();
}

class _Exam1State extends State<Exam1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Magicalbox(image: ImageUtil.exam1,onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Exam2() ));
        },),
    );
  }
}