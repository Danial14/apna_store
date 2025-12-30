import 'package:apna_store/utils/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes_strings.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';

class PromoSlider extends StatelessWidget {
  final List<String> banners;
  const PromoSlider({
    super.key,
    required this.banners
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
            onPageChanged: (index, _){
                controller.updatePageIndicator(index);
            }
          ),
          items: banners.map((image){
            return RoundedImage(imageUrl: image);
          }).toList(),
        ),
        SizedBox(height: Sizes.spaceBetweenItems),
        Obx(()=>Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for(int i = 0; i < banners.length; i++)
              CircularShape(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carosauelCurrentIndex.value == i ? AppColors.primary : AppColors.grey,
                  margin: EdgeInsets.only(right: 10)
              ),
          ],
        ))

      ],
    );
  }
}