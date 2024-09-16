import 'package:flutter/material.dart';
import 'package:striaa/main.dart';


bool isDark(BuildContext context){
  return Theme.of(context).brightness == Brightness.dark;
}


class FontUtil {

  // Font Size 30 ------- FontWeight Bold

  static TextStyle font30B({Color? color}){
    return TextStyle(
        fontFamily: 'Inter',
        fontSize: 30,
        letterSpacing: 0,
        fontWeight: FontWeight.w700,
        color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }


  // Font Size 28 ------- FontWeight  Bold

  static TextStyle font28B({Color? color}){
    return TextStyle(
        fontFamily: 'Inter',
        fontSize: 28,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }



  // Font Size 26 ------- FontWeight Semi Bold

  static TextStyle font26SB({Color? color}){
    return TextStyle(
        fontFamily: 'Inter',
        fontSize: 26,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }


// Font Size 24 ------- FontWeight Semi Bold

  static TextStyle font24SB({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 24,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }


// Font Size 24 ------- FontWeight Bold
   static TextStyle font24B({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

  // Font Size 22 ------- FontWeight semi Bold
  static TextStyle font22SB({Color? color}){
    return TextStyle(
        fontFamily: 'Inter',
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }



// Font Size 20 ------- FontWeight Semi Bold
  static TextStyle font20SB({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

// Font Size 20 ------- FontWeight Bold
   static TextStyle font20B({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

// Font Size 18 ------- FontWeight Bold
   static TextStyle font18B({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

// Font Size 18 ------- FontWeight Bold
   static TextStyle font18SB({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

// Font Size 16 ------- FontWeight Bold

   static TextStyle font16B({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

// Font Size 16 ------- FontWeight Semi Bold

   static TextStyle font16SB({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }


// Font Size 16 ------- FontWeight Normal

   static TextStyle font16N({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

// Font Size 16 ------- FontWeight Medium

   static TextStyle font16M({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

// Font Size 14 ------- FontWeight Normal

   static TextStyle font14({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color
    );
    
  }

// Font Size 14 ------- FontWeight Bold

  static TextStyle font14B({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

// Font Size 14 ------- FontWeight Semi Bold

  static TextStyle font14SB({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

  // Font Size 14 ------- FontWeight Normal

  static TextStyle font14N({Color? color}){
    return TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }


// Font Size 12 ------- FontWeight Normal

  static TextStyle font12N({Color? color}){
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

  // Font Size 12 ------- FontWeight Semi Bold

  static TextStyle font12SB({Color? color}){
    return TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: color ?? (isDark(navkey!.currentState!.context) ? Colors.white : Colors.black)
    );
  }

}