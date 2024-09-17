import 'package:flutter/material.dart';
import 'package:striaa/pages/Exam3.dart';
import 'package:striaa/pages/Sos2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Exam2 extends StatefulWidget {
  const Exam2({super.key});

  @override
  State<Exam2> createState() => _Exam2State();
}

class _Exam2State extends State<Exam2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Magicalbox(image: ImageUtil.exam2,onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => Exam3() ));
        },borderradius: 40,),
    );
  }
}