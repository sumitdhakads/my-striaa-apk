import 'package:flutter/material.dart';
import 'package:striaa/pages/onTap.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/CustomSearchBar.dart';
import 'package:striaa/widgets/PostContainer.dart';
import 'package:striaa/widgets/image.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "Striaa",
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: ListView(
          children: [
            SizedBox(height: 30,),
            CustomSearchBar(),
            SizedBox(height: 25,),
            Postcontainer(image: ImageUtil.one, text: "Sed ut perspicitis iste natus unde error..",
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ontap()));
              },
            ),
            SizedBox(height: 15,),
            Postcontainer(image: ImageUtil.two, text: "Sed ut perspicitis iste natus unde error..",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Ontap()));
              },
            ),
            SizedBox(height: 15,),
            Postcontainer(image: ImageUtil.three, text: "Sed ut perspicitis iste natus unde error.."
            , onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Ontap()));
              },
            ),
            SizedBox(height: 15,),
            Postcontainer(image: ImageUtil.four, text: "Sed ut perspicitis iste natus unde error.."),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
