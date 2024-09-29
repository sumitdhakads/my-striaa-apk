import 'package:flutter/material.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Magicalbox(image: ImageUtil.calendar,onPressed: (){
        },borderradius: 35,),
      ),
    );
  }
}

