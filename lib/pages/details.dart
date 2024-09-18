import 'package:flutter/material.dart';
import 'package:striaa/pages/CreatePost.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/faq2.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.detail,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePost()));
      },
      borderradius: 40,
      )
      ),
    );
  }
}
