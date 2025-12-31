import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isDark ? AppColors.dark.withOpacity(0.9) : AppColors.light.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(
          onPressed: (){},
          icon: Icon(Iconsax.heart)
      ),
    );
  }
}