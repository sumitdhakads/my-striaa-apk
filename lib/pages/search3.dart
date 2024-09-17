import 'package:flutter/material.dart';
import 'package:striaa/pages/Search4.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/faq2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Search3 extends StatelessWidget {
  const Search3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newevent,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Search4()));
      },borderradius: 40,)),
    );
  }
}
