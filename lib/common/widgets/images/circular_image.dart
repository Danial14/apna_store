import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';

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
    this.isNetworkImage = false
  });

  final bool isDark, isNetworkImage;
  final double width, height, padding;
  final Color? backgroundColor;
  final Color? overlayColor;
  final String image;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isDark ? AppColors.dark : AppColors.light
      ),
      child: Image(
        image: AssetImage(image),
        color: isDark ? AppColors.light : AppColors.dark,
      ),
    );
  }
}