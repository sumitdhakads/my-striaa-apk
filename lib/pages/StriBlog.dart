import 'package:flutter/material.dart';
import 'package:striaa/pages/CreatePost.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class StriBlog extends StatelessWidget {
  const StriBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.blogsquad,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePost()));
      },)),
    );
  }
}
