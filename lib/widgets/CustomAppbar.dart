import 'package:flutter/material.dart';
import 'package:striaa/utils/font_util.dart';
import 'package:striaa/utils/image_util.dart';
import 'package:striaa/widgets/image.dart';


class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, this.title, this.leading, this.action,this.bgcolor,this.heigth,this.icon,this.actiononTap});

  final String? title;
  final Widget? leading;
  final Widget? action;
  final Color? bgcolor;
  final double? heigth;
  final String? icon;
  final VoidCallback? actiononTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leadingWidth: 59,
      backgroundColor: bgcolor,
      title: Text(
        title ?? '',
        style: FontUtil.font20SB(),
      ),
      leading: leading == null ? InkWell(
        onTap: (){Navigator.pop(context);},
        child: Container(
          margin: EdgeInsets.only(left: 15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 0.5,color: Color(0xFFC9CBD1)),
          ),
          child: SvgIcon(
            icon: icon ?? ImageUtil.leftblacksvg,
          ),
        ),
      ) : leading ,
      actions: action != null ? [InkWell(
          onTap: actiononTap,
          child: action!)] : [], // Conditionally add action
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(heigth ?? 60);
}
