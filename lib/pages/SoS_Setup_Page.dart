import 'package:flutter/material.dart';
import 'package:striaa/pages/Sos1.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/CustomAppbar.dart';
import 'package:striaa/widgets/button.dart';
import 'package:striaa/widgets/dash.dart';
import 'package:striaa/widgets/image.dart';
import 'package:striaa/widgets/name&phoneContainer.dart';

class SosSetupPage extends StatefulWidget {
  const SosSetupPage({super.key});

  @override
  State<SosSetupPage> createState() => _SosSetupPageState();
}

class _SosSetupPageState extends State<SosSetupPage> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppbar(
        title: "Set up SOS",
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: leftRightAppPadding),
        children: [
          SizedBox(
            height: 30,
          ),
          Namephonecontainer(title: "Contact 1"),
          SizedBox(
            height: 15,
          ),
          DashedLine(width: MediaQuery.of(context).size.width),
          SizedBox(
            height: 15,
          ),
          Namephonecontainer(title: "Contact 2"),
          SizedBox(
            height: 15,
          ),
          DashedLine(width: MediaQuery.of(context).size.width),
          SizedBox(
            height: 15,
          ),
          Namephonecontainer(title: "Contact 3"),
          SizedBox(
            height: 15,
          ),
          DashedLine(width: MediaQuery.of(context).size.width),
          SizedBox(
            height: 15,
          ),
          Text(
            "Add emergency message",
            style: FontUtil.font18SB(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              // Only show border when focused
              border: _isFocused
                  ? Border.all(
                color: ColorUtil.primaryColor, // Focused border color
                width: 1, // Border thickness when focused
              )
                  : Border.all(
                color: Colors.transparent, // No border when not focused
                width: 0, // No thickness when not focused
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: "Enter your message",
                  border: InputBorder.none,
                  hintStyle: FontUtil.font12N(color: ColorUtil.textLightGrey)
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorUtil.secondaryColor,
        child: ButtonWidget(
            onPressed: () {
              // Handle continue button press
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Sos1()));
            },
            color: Theme.of(context).primaryColor,
            text: 'Continue',
            textColor: Colors.white,
          ),
      ),
    );
  }
}
