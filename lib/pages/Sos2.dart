import 'package:flutter/material.dart';
import 'package:striaa/pages/Sos3.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Sos2 extends StatefulWidget {
  const Sos2({super.key});

  @override
  State<Sos2> createState() => _Sos2State();
}

class _Sos2State extends State<Sos2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Magicalbox(
          image: ImageUtil.sos2,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Sos3()));
          },
        ),
    );
  }
}