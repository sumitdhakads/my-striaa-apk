import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.title, this.leading, this.action,this.bgcolor});

  final String? title;
  final Widget? leading;
  final Widget? action;
  final Color? bgcolor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgcolor,
      title: Text(
        title ?? '',
        style: FontUtil.font20SB(),
      ),
      leading: leading,
      actions: action != null ? [action!] : [], // Conditionally add action
    );
  }
}
