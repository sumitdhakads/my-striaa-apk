import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:striaa/utils/image_util.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon({super.key,required this.icon, this.width, this.height, this.color});

  final Color? color;
  final double? width,height;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: width,
      height: height,
      color: color,
    );
  }
}



class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    this.image,
    this.color,
    this.width,
    this.height,
    this.fit
  });

  final String? image;
  final Color? color;
  final double? width, height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image ?? ImageUtil.doctor,
    color: color,
    width: width,
    height: height,
    fit: fit ?? BoxFit.cover);
  }
}