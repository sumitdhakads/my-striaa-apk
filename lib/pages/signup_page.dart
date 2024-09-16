import 'package:flutter/material.dart';
import 'package:striaa/pages/login_Page.dart';
import 'package:striaa/pages/otpVerification.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/PrefixTextFieldContainer.dart';
import 'package:striaa/widgets/SuffixTextFieldContainer.dart';
import 'package:striaa/widgets/TextFieldContainer.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/checkbox.dart';
import 'package:striaa/widgets/image.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
          width: appwidth(context),
          height: appHeight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Ensures the last element is at the bottom
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, bottom: 40),
                    child: Text(
                      "Sign up",
                      style: FontUtil.font26SB(),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Textfieldcontainer(
                          title: "Name",
                          hintText: "Enter your name",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Textfieldcontainer(
                          title: "Email",
                          hintText: "Enter your email",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        PrefixTextFieldContainer(
                            title: "Phone Number",
                            hintText: "+91  |  Phone number",
                            prefixicon: SvgIcon(
                              icon: ImageUtil.indianFlag,
                            )),
                        SizedBox(height: 15),
                        SuffixTextFieldContainer(
                          suffixicon: SvgIcon(
                            icon: ImageUtil.eyeicon,
                          ),
                          title: "Password",
                          hintText: "Enter your password",
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CustomCheckBox(),
                      Text(
                        "I agree to ",
                        style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                      ),
                      Text(
                        "Terms and Conditions",
                        style: FontUtil.font12N(),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: appwidth(context),
                    child: ButtonWidget(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Otpverification()));
                      },
                      color: Theme.of(context).primaryColor,
                      text: 'Sign up',
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
        
              // Moved the text to the bottom inside the Column
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: FontUtil.font14SB(color: ColorUtil.textLightGrey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.zero, // Remove padding from the TextButton
                        minimumSize: Size(
                            0, 0), // Ensure the button doesn't add extra space
                        tapTargetSize: MaterialTapTargetSize
                            .shrinkWrap, // Shrink the button's touch area
                      ),
                      child: Text(
                        "Log in",
                        style: FontUtil.font14SB(color: ColorUtil.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
