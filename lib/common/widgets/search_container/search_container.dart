import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes_strings.dart';
import '../../../utils/devices/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackground;
  final bool showBorder;
  final VoidCallback? onPressed;
  final EdgeInsets padding;

  const SearchContainer({
    super.key,
    required this.text,
    required this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: padding,
        child: Container(
          width: DeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(Sizes.md),
          decoration: BoxDecoration(
              color: showBackground ? isDark ? AppColors.light : AppColors.dark : Colors.transparent,
              borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
              border: showBorder ? Border.all(color: AppColors.grey) : null
          ),
          child: Row(
            children: [
              Icon(icon,
                color: AppColors.darkGrey,
              ),
              SizedBox(width: Sizes.spaceBetweenItems,),
              Text(text,
                  style: Theme.of(context).textTheme.bodySmall
              )
            ],
          ),
        ),
      ),
    );
  }
}