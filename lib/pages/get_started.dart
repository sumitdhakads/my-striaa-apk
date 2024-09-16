import 'package:flutter/material.dart';
import 'package:striaa/pages/login_page.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/image.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: appHeight(context) / 3.33),
              child: const ImageWidget(),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: ClipRRect(
               borderRadius: BorderRadius.circular(35),
                child: Container(
                  padding: EdgeInsets.only(
                      left: leftRightAppPadding,
                      right: leftRightAppPadding,
                      top: padding30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                        style: FontUtil.font24SB(),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.',
                        style: FontUtil.font14N(color: ColorUtil.textLightGrey),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: padding30),
                      Container(
                        height: 60,
                        width: appwidth(context),
                        margin: EdgeInsets.only(bottom: padding16),
                        child: ButtonWidget(
                          onPressed: () {
                           Navigator.push((context), MaterialPageRoute(builder: (context) => Login()));
                          },
                          color: Theme.of(context).primaryColor,
                          text: 'Continue',
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
