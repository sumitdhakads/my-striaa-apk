import 'package:flutter/material.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/SuffixTextFieldContainer.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbar(
          title: "Change Password",
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        child: Column(
          children: [
            SizedBox(height: 30,),
            SuffixTextFieldContainer(
              suffixicon: SvgIcon(
                icon: ImageUtil.eyeicon,
              ),
              title: "Current Password",
              hintText: "Enter your current password",
            ),
            SizedBox(height: 20,),
            SuffixTextFieldContainer(
              suffixicon: SvgIcon(
                icon: ImageUtil.eyeicon,
              ),
              title: "New Password",
              hintText: "Enter your new password",
            ),
            SizedBox(height: 20,),
            SuffixTextFieldContainer(
              suffixicon: SvgIcon(
                icon: ImageUtil.eyeicon,
              ),
              title: "Confirm New Password",
              hintText: "Confirm your new password",
            ),
             Spacer(),
            ButtonWidget(text: "Change Password",color: ColorUtil.primaryColor,onPressed: (){},textColor: Colors.white,),
            SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }
}
