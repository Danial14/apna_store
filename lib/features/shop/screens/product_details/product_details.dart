import 'package:apna_store/common/widgets/appbar/customappbar.dart';
import 'package:apna_store/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:apna_store/common/widgets/icons/circular_icon.dart';
import 'package:apna_store/common/widgets/images/rounded_image.dart';
import 'package:apna_store/features/shop/screens/product_details/widgets/product_image_slidder.dart';
import 'package:apna_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:apna_store/features/shop/screens/product_details/widgets/ratingandshare.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes_strings.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // 1. Product Image Slider
          children: [
            ProductImageSlidder(isDark: isDark),
            Padding(
              padding: const EdgeInsets.only(
                right: Sizes.defaultSpace,
                left: Sizes.defaultSpace,
                bottom: Sizes.defaultSpace
              ),
              child: Column(
                children: [
                  // Rating and Share
                  RatingAndShare(),
                  // Price, Title, Stock and Brand
                  ProductMetaData(),
                  // Attributes
                  // Checkout button
                  // Description
                  // Reviews
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}



