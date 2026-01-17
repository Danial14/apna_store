import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class RoundedImage extends StatelessWidget {
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? boxFit;
  final EdgeInsetsGeometry padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor = AppColors.light,
    this.boxFit = BoxFit.contain,
    this.padding = const EdgeInsets.all(0),
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = Sizes.md
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: onPressed,
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: border,
              color: isDark ? AppColors.dark : AppColors.light,
          ),
          child: ClipRRect(
              borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
              child: Image(image: isNetworkImage? NetworkImage(imageUrl) : AssetImage(imageUrl),
                fit: BoxFit.contain,
              )
          )
      ),
    );
  }
}