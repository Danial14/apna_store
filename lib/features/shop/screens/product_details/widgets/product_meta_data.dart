import 'package:apna_store/common/widgets/products/product_price/product_price.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and Sale price
        Row(
          children: [
            CircularShape(
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
            const SizedBox(
              width: Sizes.spaceBetweenItems,
            ),
            Text('\$250',
            style: Theme.of(context).textTheme.titleSmall!.apply(
              decoration: TextDecoration.lineThrough
            ),
            ),
            const SizedBox(
              width: Sizes.spaceBetweenItems,
            ),
            PriceText(price: "150")
          ],
        ),
        // Title
        // Stock status
        // Brand
      ]
    );
  }
}
