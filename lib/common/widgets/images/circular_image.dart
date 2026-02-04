import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.isDark,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.boxFit = BoxFit.cover,
    this.padding = 0,
    this.isNetworkImage = false,
    this.showBorder = false
  });

  final bool isDark, isNetworkImage;
  final double width, height, padding;
  final Color? backgroundColor;
  final Color? overlayColor;
  final String image;
  final BoxFit? boxFit;
  final bool? showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: showBorder! ? BorderRadius.circular(100) : null,
          color: backgroundColor ?? (isDark ? AppColors.dark : AppColors.light)
      ),
      child: Image(
        fit: boxFit,
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image),
        color: overlayColor,
      ),
    );
  }
}