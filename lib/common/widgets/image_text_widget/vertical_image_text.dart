import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  final VoidCallback? onPressed;
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;

  const VerticalImageText({
    super.key,
    this.onPressed,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizes.spaceBetweenItems),
        child: Column(
          children: [
            Container(
                width: 56,
                height: 56,
                padding: EdgeInsets.all(Sizes.sm),
                decoration: BoxDecoration(
                    color: backgroundColor ?? (isDark ? AppColors.white : AppColors.black),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        ImageStrings.smartPhone,
                      ),
                      color: isDark ? AppColors.dark : AppColors.light,
                      fit: BoxFit.cover,
                    )
                )
            ),
            SizedBox(height: Sizes.spaceBetweenItems / 2),
            SizedBox(
              width: 55,
              child: Text(title,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: textColor
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}