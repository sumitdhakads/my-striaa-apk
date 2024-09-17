import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/faq2.dart';
import 'package:striaa/pages/search3.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Search2 extends StatelessWidget {
  const Search2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newsearchstree2,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Search3()));
      },
        borderradius: 40,
      )),
    );
  }
}
