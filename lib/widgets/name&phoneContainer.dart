import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/PrefixTextFieldContainer.dart';
import 'package:striaa/widgets/TextFieldContainer.dart';
import 'package:striaa/widgets/image.dart';

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
          PrefixTextFieldContainer(
            title: "Phone Number",
            hintText: "+91  |  Phone number",
            prefixicon: SvgIcon(icon: ImageUtil.indianFlag),
          ),
        ],
      ),
    );
  }
}
