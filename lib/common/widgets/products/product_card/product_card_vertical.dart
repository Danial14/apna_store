import 'package:apna_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:apna_store/common/widgets/images/rounded_image.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadow.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Container(
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
                RoundedImage(imageUrl: ImageStrings.productImageOne)
              ]
            ),
          )
        ],
      ),
    );
  }
}
