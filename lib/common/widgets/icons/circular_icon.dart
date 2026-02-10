import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes_strings.dart';

class CircularIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData? icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;
  const CircularIcon({
    super.key,
    required this.isDark,
    this.width,
    this.height,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
    this.size = Sizes.iconLg
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor ?? (isDark ? AppColors.dark.withOpacity(0.9) : AppColors.light.withOpacity(0.9)),
          borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon,
          color: color,
          )
      ),
    );
  }
}