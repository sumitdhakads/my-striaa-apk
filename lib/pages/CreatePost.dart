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

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Create Post",
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
                borderRadius: BorderRadius.circular(12),
                // Only show border when focused
                border: _isFocused
                    ? Border.all(
                  color: ColorUtil.primaryColor, // Focused border color
                  width: 1, // Border thickness when focused
                )
                    : Border.all(
                  color: Colors.transparent, // No border when not focused
                  width: 0, // No thickness when not focused
                ),
              ),
              child: TextField(
                focusNode: _focusNode,
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
                width: appwidth(context)/2.4,
                child: OurFilepicker()
            ),
            Spacer(),
            ButtonWidget(onPressed: (){
              Navigator.pop(context);
            },color: ColorUtil.primaryColor,text: "Submit",textColor: Colors.white,),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
