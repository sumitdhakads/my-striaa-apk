import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/color_util.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';

class Message extends StatelessWidget {
  final String? text;

  Message({super.key, this.text});

  // Get the current time in 'hh:mm a' format
  String _formatCurrentTime() {
    return DateFormat('hh:mm a').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: SizedBox(
              width: 44,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: ImageWidget(
                  image: ImageUtil.newbot,
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      text ?? '',
                      style: FontUtil.font14N(),
                    ),
                  ),
                  SizedBox(height: 10), // Add some space between message and time
                  Text(
                    _formatCurrentTime(), // Display the formatted time
                    style: FontUtil.font12M(color: ColorUtil.textLightGrey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
