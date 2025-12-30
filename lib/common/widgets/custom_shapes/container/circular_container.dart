import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes_strings.dart';

class CircularShape extends StatelessWidget {
  const CircularShape({
    super.key,
    this.child,
    this.width,
    this.height,
    this.radius = Sizes.cardRadiusLg,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.backgroundColor = AppColors.white
  });
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: backgroundColor
        ),
        padding: padding,
        margin: margin,
        child: child
    );
  }
}