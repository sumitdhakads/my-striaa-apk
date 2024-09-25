import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:striaa/utils/app_utils.dart';
import 'package:striaa/utils/font_util.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.text, required this.onPressed, this.color,this.textColor});
  final String? text;
  final Color? color;
  final VoidCallback onPressed;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: appwidth(context),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(text ?? "",
          style: FontUtil.font16M(
            color: textColor ?? Colors.white
          ),
          ),
        ),
      ),
    );
  }
}


class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key, this.text,this.leadingIcon,this.iconHeight,this.iconWidth, required this.onPressed, this.color,this.textColor});
  final String? text;
  final Color? color;
  final VoidCallback onPressed;
  final Color? textColor;
  final String? leadingIcon;
  final double? iconHeight, iconWidth;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: appwidth(context),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
          child: Row(
            children: [
              leadingIcon != null ?
              leadingIcon!.contains('png') ? 
              Image.asset(leadingIcon ?? "",width: iconWidth,height: iconHeight)
              : SvgPicture.asset(leadingIcon ?? "",width: iconWidth,height: iconHeight)
              : const SizedBox(),
              if( leadingIcon != null )
              const SizedBox(width: 12),
              Text(text ?? "",
              style: FontUtil.font16M(
                color: textColor ?? Colors.white
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}