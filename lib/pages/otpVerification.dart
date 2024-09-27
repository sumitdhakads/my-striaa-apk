import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:striaa/pages/personal_details.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/button.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 68,
      height: 68,
      textStyle: FontUtil.font24SB(),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );

    // Define the theme when the field is focused
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).primaryColor, // Primary color border
          width: 1, // Border width
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    SizedBox(height: 6),
                    Text(
                      "Enter 4 digit code",
                      style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme, // Apply the focused theme
                onCompleted: (pin) => print(pin),
                onChanged: (pin) {
                  // Handle OTP logic
                },
              ),
              SizedBox(height: 160),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive the code? ",
                    style: FontUtil.font12N(color: ColorUtil.textLightGrey),
                  ),
                  Text(
                    "Resend Code",
                    style: FontUtil.font12SB(),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                width: appwidth(context),
                child: ButtonWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonalDetails(),
                      ),
                    );
                  },
                  color: Theme.of(context).primaryColor,
                  text: 'Verify',
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
