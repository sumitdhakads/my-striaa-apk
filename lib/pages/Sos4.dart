import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Sos4 extends StatefulWidget {
  const Sos4({super.key});

  @override
  State<Sos4> createState() => _Sos4State();
}

class _Sos4State extends State<Sos4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Magicalbox(
          image: ImageUtil.newsos4,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => StriaaPage()));
          },borderradius: 40,
        ),

    );
  }
}