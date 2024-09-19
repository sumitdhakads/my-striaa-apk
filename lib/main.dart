import 'package:flutter/material.dart';
import 'package:striaa/pages/FaqOne.dart';
import 'package:striaa/pages/Privacy&Policy.dart';
import 'package:striaa/pages/Terms&Condition.dart';
import 'package:striaa/pages/splash_screen.dart';
import 'package:striaa/utils/app_utils.dart';

GlobalKey<NavigatorState>? navkey = GlobalKey();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Striaa',
      navigatorKey: navkey,
      theme: AppUtils.lightThemeData(),
      debugShowCheckedModeBanner: false,
      home: Faqone(),
      darkTheme: AppUtils.darkThemeData(),
      themeMode: ThemeMode.light,

    );
  }
}



