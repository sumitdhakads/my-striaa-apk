import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/faq2.dart';
import 'package:striaa/pages/search3.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class BlogHomeContainer extends StatelessWidget {
  const BlogHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newevent2,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => StriaaPage()));
      },
        borderradius: 40,
      )),
    );
  }
}
