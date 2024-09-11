
import 'package:flutter/material.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';

double leftRightAppPadding = 15;
// We will use this common padding all over the app.

double padding32 = 32;
double padding30 = 30;
double padding16 = 16;
double padding12 = 12;
double padding8 = 8;
double padding4 = 4;

double appwidth(context){
  return MediaQuery.of(context).size.width;
}

double appHeight(context){
  return MediaQuery.of(context).size.height;
}

class AppUtils {
  
  static ThemeData lightThemeData(){
    return ThemeData(
      scaffoldBackgroundColor: const Color.fromRGBO(255, 234, 248, 1),
      appBarTheme: AppBarTheme(
        titleTextStyle: FontUtil.font20SB(color: Colors.black),
        titleSpacing: leftRightAppPadding,
        backgroundColor: const Color.fromRGBO(255, 234, 248, 1),
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(255, 52, 137, 1)),
      useMaterial3: true,
      primaryColor: ColorUtil.primaryColor,
      textTheme: TextTheme(
        // 24 size
        displayLarge: FontUtil.font24B(color: Colors.black),
        displayMedium: FontUtil.font24SB(color: Colors.black),

        // 20 size
        displaySmall: FontUtil.font20B(color: Colors.black),
        headlineLarge: FontUtil.font20SB(color: Colors.black),

        // 18 size
        headlineMedium: FontUtil.font18B(color: Colors.black),
        headlineSmall: FontUtil.font18SB(color: Colors.black),
       
        // 16 size
        titleLarge: FontUtil.font16B(color: Colors.black),
        titleMedium: FontUtil.font16SB(color: Colors.black),
        titleSmall: FontUtil.font16N(color: Colors.black),
        bodyLarge: FontUtil.font16B(color: Colors.black),
        bodyMedium: FontUtil.font16N(color: Colors.black),
        bodySmall: FontUtil.font16N(color: Colors.black),
        
        // 14 size
        labelLarge: FontUtil.font14B(color: Colors.black),
        labelMedium: FontUtil.font14SB(color: Colors.black),
        labelSmall: FontUtil.font14N(color: Colors.black),
      )
    );
  }

   static ThemeData darkThemeData(){
    return ThemeData(
      appBarTheme: AppBarTheme(
        titleTextStyle: FontUtil.font20SB(color: Colors.white),
        titleSpacing: leftRightAppPadding
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(255, 52, 137, 1)),
      useMaterial3: true,
      primaryColor: const Color.fromRGBO(255, 52, 137, 1),
      textTheme: TextTheme(
        displayLarge: FontUtil.font24B(color: Colors.white),
        displayMedium: FontUtil.font24SB(color: Colors.white),
        displaySmall: FontUtil.font20B(color: Colors.white),
        headlineLarge: FontUtil.font20SB(color: Colors.white),
        headlineMedium: FontUtil.font18B(color: Colors.white),
        headlineSmall: FontUtil.font18SB(color: Colors.white),
        titleLarge: FontUtil.font16B(color: Colors.white),
        titleMedium: FontUtil.font16SB(color: Colors.white),
        titleSmall: FontUtil.font16N(color: Colors.white),
        bodyLarge: FontUtil.font16B(color: Colors.white),
        bodyMedium: FontUtil.font16SB(color: Colors.white),
        bodySmall: FontUtil.font16N(color: Colors.white),
        labelLarge: FontUtil.font14B(color: Colors.white),
        labelMedium: FontUtil.font14SB(color: Colors.white),
        labelSmall: FontUtil.font14N(color: Colors.white),
      )
    );
  }

}