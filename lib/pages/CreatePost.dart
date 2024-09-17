import 'package:flutter/material.dart';
import 'package:striaa/pages/details.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/magicalbox.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Magicalbox(image: ImageUtil.newcreatepost,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details() ));
      },
      borderradius: 40,
      )
      ),
    );
  }
}
