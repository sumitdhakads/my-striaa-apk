import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/faq2.dart';
import 'package:striaa/pages/search2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Search1 extends StatelessWidget {
  const Search1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.resource1,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Search2()));
      },)),
    );
  }
}
