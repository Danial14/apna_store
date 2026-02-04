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
    this.backgroundColor = AppColors.white,
    this.showBorder = false
  });
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets margin;
  final bool? showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: showBorder! ? BorderRadius.circular(radius) : null,
            color: backgroundColor,
          border: Border.all(color: AppColors.grey)
        ),
        padding: padding,
        margin: margin,
        child: child
    );
  }
}