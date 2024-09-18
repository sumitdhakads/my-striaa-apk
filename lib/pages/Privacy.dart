import 'package:flutter/material.dart';
import 'package:striaa/pages/doctor2.dart';
import 'package:striaa/pages/faq2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newprivacy,onPressed: (){
     Navigator.pop(context);
      },
      borderradius: 38,
      )),
    );
  }
}
