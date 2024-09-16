import 'package:flutter/material.dart';
import 'package:striaa/pages/language_selection.dart';
import 'package:striaa/utils/image_util.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds:2000),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return const LanguageSelectionPage();
      }));
    });
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(child: Container(
             decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFBFDA), // #FFBFDA
                  Color(0xFFFFEBF7), // #FFEBF7
                  Color(0xFFFFEBF7), // #FFEBF7 (repeated)
                  Color(0xFFFFBFDA), // #FFBFDA
                ],
                stops: [
                  0.0,      // 0%
                  0.20,     // 20%
                  0.8006,   // 80.06%
                  1.0,      // 100%
                ],
              ),
            ),
            )),
             Align(
              alignment: Alignment.center,
              child: Image.asset(ImageUtil.logo,width: 120,height: 120)
            ),
          ],
        )
      ), 
    );
  }
}
