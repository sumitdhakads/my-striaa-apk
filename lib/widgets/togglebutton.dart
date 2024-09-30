import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  @override
  _CustomToggleButtonState createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  bool isToggled = false;

  void toggleButton() {
    setState(() {
      isToggled = !isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: toggleButton,
          child: Container(
            width: 42,
            height: 22,
            decoration: BoxDecoration(
              color: isToggled ? Theme.of(context).primaryColor : Colors.grey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: AnimatedAlign(
              duration: Duration(milliseconds: 200),
              alignment: isToggled ? Alignment.centerRight : Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 2,bottom: 2,left: 0,right: 0),
                child: CircleAvatar(
                  radius: 12, // Half of container height
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ),
    );
  }
}

