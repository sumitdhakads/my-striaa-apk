import 'package:flutter/material.dart';
import 'package:striaa/pages/Sos2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Sos1 extends StatefulWidget {
  const Sos1({super.key});

  @override
  State<Sos1> createState() => _Sos1State();
}

class _Sos1State extends State<Sos1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Magicalbox(
          image: ImageUtil.sos1,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Sos2()));
          },
        ),
    );
  }
}