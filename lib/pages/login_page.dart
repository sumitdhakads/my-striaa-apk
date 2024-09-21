import 'package:flutter/material.dart';
import 'package:striaa/pages/StriaaPage.dart';
import 'package:striaa/pages/signup_page.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/SuffixTextFieldContainer.dart';
import 'package:striaa/widgets/TextFieldContainer.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    margin: EdgeInsets.only(top: 80, bottom: 60),
                    child: Text(
                      "Log in",
                      style: FontUtil.font26SB(),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Textfieldcontainer(
                          title: "Email",
                          hintText: "Enter your email",
                        ),
                        SizedBox(height: 15),
                        SuffixTextFieldContainer(
                          suffixicon: SvgIcon(
                            icon: ImageUtil.eyeicon,
                          ),
                          title: "Password",
                          hintText: "Enter your password",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(),
                            TextButton(
                              child: Text(
                                "Forgot Password?",
                                style: FontUtil.font14N(
                                    color: ColorUtil.primaryColor),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: appwidth(context),
                    child: ButtonWidget(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StriaaPage()),
                            (route) => false);
                      },
                      color: Theme.of(context).primaryColor,
                      text: 'Log In',
                      textColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "OR",
                    style: FontUtil.font14N(),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: appwidth(context),
                    child: ButtonWidget(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      color: Colors.white,
                      text: 'Sign Up',
                      textColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: appwidth(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 35),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(58),
                            ),
                            child: Row(
                              children: [
                                SvgIcon(icon: ImageUtil.googleLogo),
                                SizedBox(width: 10),
                                Text(
                                  "Google",
                                  style: FontUtil.font16M(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 35),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(58),
                            ),
                            child: Row(
                              children: [
                                SvgIcon(icon: ImageUtil.appleLogo),
                                SizedBox(width: 10),
                                Text(
                                  "Apple",
                                  style: FontUtil.font16M(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                      "Sign up ",
                      style: FontUtil.font14SB(color: ColorUtil.primaryColor),
                    ),
                    Text(
                      "of Doctors and Professionals",
                      style: FontUtil.font14SB(color: ColorUtil.textLightGrey),
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

// Row(
// children: [
// // SvgIcon(icon: ImageUtil.locator),
// Icon(Icons.pin_drop,color: ColorUtil.primaryColor,),
// Text("Carter Street Fairview Heights..",style: FontUtil.font12N(color: ColorUtil.textLightGrey,)),
// ],
// )
