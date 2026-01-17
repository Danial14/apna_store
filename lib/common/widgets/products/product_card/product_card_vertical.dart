import 'package:apna_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:apna_store/common/widgets/images/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadow.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_title_text.dart';
import '../product_price/product_price.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.productImageRadius),
          boxShadow: [
            CustomShadow.verticalShadow
          ],
          color: isDark ? AppColors.darkGrey : AppColors.white
        ),
        child: Column(
          children: [
            CircularShape(
              height: 180,
              padding: EdgeInsets.all(Sizes.sm),
              backgroundColor: isDark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  RoundedImage(imageUrl: ImageStrings.productImageOne,
                  applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: CircularShape(
                      radius: Sizes.sm,
                      backgroundColor: AppColors.secondary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.sm,
                        vertical: Sizes.xs
                      ),
                      child: Text("25%",
                      style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.black),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(isDark: isDark,
                    icon: Iconsax.heart,
                    color: Colors.red,
                    ),
                  ),

                ]
              ),
            ),
            SizedBox(height: Sizes.spaceBetweenItems / 2),
            // Details
            Padding(
                padding: EdgeInsets.only(left: Sizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: "Nike Shoes",
                        //smallSize: true,
                      ),
                      SizedBox(
                        height: Sizes.spaceBetweenItems / 2,
                      ),
                      Row(
                        children: [
                          Text("Nike",
                          style: Theme.of(context).textTheme.labelMedium,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const SizedBox(width: Sizes.xs),
                          Icon(Iconsax.verify,
                          color: AppColors.primary,
                            size: Sizes.iconXs
                          ),
                        ],
                      ),
                    ]
                )
            ),
            Spacer(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(left: Sizes.sm),
                      child: PriceText()),
                  Container(
                      decoration: BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Sizes.cardRadiusMd),
                              bottomRight: Radius.circular(Sizes.productImageRadius)
                          )
                      ),
                      child: SizedBox(
                        width: Sizes.iconLg * 1.2,
                        height: Sizes.iconLg * 1.2,
                        child: Icon(Iconsax.add_circle,
                            color: AppColors.white
                        ),
                      )
                  )
                ]
            )
          ],
        ),
      ),
    );
  }
}



