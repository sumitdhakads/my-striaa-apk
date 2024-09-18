import 'package:flutter/material.dart';
import 'package:striaa/pages/current_cycle2.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class CurrentCyclePage extends StatefulWidget {
  const CurrentCyclePage({super.key});

  @override
  State<CurrentCyclePage> createState() => _CurrentCyclePageState();
}

class _CurrentCyclePageState extends State<CurrentCyclePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: Magicalbox(image: ImageUtil.CurrentCycle,onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CurrentCycle2() ));
        },),
      )
    );
  }
}