import 'package:apna_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:apna_store/common/widgets/images/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../utils/constants/enums.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_text.dart';

class VerticalBrandCard extends StatelessWidget {
  const VerticalBrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: CircularShape(
        padding: const EdgeInsets.all(Sizes.sm),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(isDark: isDark,
                image: ImageStrings.productImageOne,
                overlayColor: isDark ? AppColors.light : AppColors.dark,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(width: Sizes.spaceBetweenItems / 2),
            // Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const BrandTitleText(title: "Nike",
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                      "256 products",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}





