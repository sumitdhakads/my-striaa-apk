import 'package:flutter/material.dart';
import 'package:striaa/pages/personal_details.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/button.dart';

class Otpverification extends StatelessWidget {
  const Otpverification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
          width: appwidth(context),
          height: appHeight(context),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 80, bottom: 40),
                child: Column(
                  children: [
                    Text(
                      "OTP Verification",
                      style: FontUtil.font26SB(),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Enter 4 digit code",
                      style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.white,
                      child: Text(
                        "4",
                        style: FontUtil.font24B(),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.white,
                      child: Text(
                        "3",
                        style: FontUtil.font24B(),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.white,
                      child: Text(
                        "7",
                        style: FontUtil.font24B(),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.white,
                      child: Text(
                        "5",
                        style: FontUtil.font24B(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 160,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't received the code? ",
                      style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                    ),
                    Text(
                      "Resend Code",
                      style: FontUtil.font12SB(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: appwidth(context),
                child: ButtonWidget(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonalDetails()));
                  },
                  color: Theme.of(context).primaryColor,
                  text: 'Verify',
                  textColor: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
