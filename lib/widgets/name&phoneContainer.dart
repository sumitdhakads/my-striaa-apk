import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/TextFieldContainer.dart';

class Namephonecontainer extends StatelessWidget {
  const Namephonecontainer({super.key,required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: FontUtil.font18SB(),),
          SizedBox(height: 10,),
          Textfieldcontainer(
            title: "Name",
            hintText: "Enter your name",
          ),
          SizedBox(height: 10,),
          Textfieldcontainer(title: "Phone Number",
            hintText: "+91  |  Phone number",),
        ],
      ),
    );
  }
}
