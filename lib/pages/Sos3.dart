import 'package:flutter/material.dart';
import 'package:striaa/pages/Sos4.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Sos3 extends StatefulWidget {
  const Sos3({super.key});

  @override
  State<Sos3> createState() => _Sos3State();
}

class _Sos3State extends State<Sos3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Magicalbox(
          image: ImageUtil.sos3,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Sos4()));
          },borderradius:40,
        ),
    );
  }
}