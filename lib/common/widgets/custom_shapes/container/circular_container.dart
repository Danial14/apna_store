import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class CircularShape extends StatelessWidget {
  const CircularShape({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = AppColors.white
  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: backgroundColor
        ),
        padding: const EdgeInsets.all(0),
        child: child
    );
  }
}