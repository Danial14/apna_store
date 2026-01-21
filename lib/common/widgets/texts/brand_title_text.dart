import 'package:apna_store/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes_strings.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.title,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.maxLines = 1
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: brandTextSize == TextSizes.small ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor) :
                brandTextSize == TextSizes.medium ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor) :
                    brandTextSize == TextSizes.large ? Theme.of(context).textTheme.titleLarge!.apply(color: textColor) :
                        Theme.of(context).textTheme.bodyMedium!.apply(color: textColor)
          ),
        ),
        const SizedBox(width: Sizes.xs),
        Icon(Iconsax.verify,
            color: AppColors.primary,
            size: Sizes.iconXs
        ),
      ],
    );
  }
}