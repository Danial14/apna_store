import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class CircularShape extends StatelessWidget {
  const CircularShape({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
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