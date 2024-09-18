import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class CurrentCycle2 extends StatefulWidget {
  const CurrentCycle2({super.key});

  @override
  State<CurrentCycle2> createState() => _CurrentCycle2State();
}

class _CurrentCycle2State extends State<CurrentCycle2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Magicalbox(image: ImageUtil.CurrentCycle2,onPressed: (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StriaaPage()),(route) => false);
        },)
    );
  }
}