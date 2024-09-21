import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/FilePicker.dart';
import 'package:striaa/widgets/TextFieldContainer.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "Create Post",
          leading: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  child: SvgIcon(
                    icon: ImageUtil.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Textfieldcontainer(title: "Add Title", hintText: "Enter post title"),
            SizedBox(height: 20,),
            Text("Add Description",style: FontUtil.font14SB(),),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 233,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter description text",
                  hintStyle: FontUtil.font12N(color: ColorUtil.textLightGrey),
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Add image",style: FontUtil.font14SB(),),
            SizedBox(height: 10,),
            Container(
                width: appwidth(context)/2,
                child: OurFilepicker()
            ),
            Spacer(),
            ButtonWidget(onPressed: (){},color: ColorUtil.primaryColor,text: "Submit",textColor: Colors.white,),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
