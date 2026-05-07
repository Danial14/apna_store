import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../common/widgets/appbar/customappbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes_strings.dart';

class ProductImageSlidder extends StatelessWidget {
  const ProductImageSlidder({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(child: Container(
      color: isDark ? AppColors.darkerGrey : AppColors.light,
      child: Stack(
        children: [
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(Sizes.productImageRadius * 2),
              child: Center(
                child: Image(image: AssetImage(
                  ImageStrings.productImageOne,
                )
                ),
              ),
            ),
          ),
          // Image Slider
          Positioned(
            right: 0,
            bottom: 30,
            left: Sizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, position){
                    return RoundedImage(imageUrl: ImageStrings.productImageTwo,
                      width: 80,
                      backgroundColor: isDark ? AppColors.dark : AppColors.white,
                      border: Border.all(color: AppColors.primary),
                      padding: EdgeInsets.all(Sizes.sm),
                    );
                  }, separatorBuilder: (_, __){
                return SizedBox(
                  width: Sizes.spaceBetweenItems,
                );
              }, itemCount: 4),
            ),
          ),
          // Appbar Icons
          CustomAppbar(
            showBackArrow: true,
            actions: [
              CircularIcon(color: Colors.red, icon: Iconsax.heart, isDark: isDark,)
            ],
          )

        ],
      ),
    ),
    );
  }
}