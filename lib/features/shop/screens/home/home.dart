import 'package:apna_store/features/shop/screens/home/widgets/homeappbar.dart';
import 'package:apna_store/utils/devices/device_utility.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/appbar/customappbar.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header.dart';
import '../../../../common/widgets/product_cart_widget/custom_cart.dart';
import '../../../../common/widgets/search_container/search_container.dart';
import '../../../../common/widgets/section_heading/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                SizedBox(height: Sizes.spaceBetweenSections,),
                SearchContainer(text: "Search in Store", icon: Iconsax.search_normal),
                SizedBox(height: Sizes.spaceBetweenSections),
                Padding(
                  padding: EdgeInsets.only(left: Sizes.defaultSpace),
                  child: Column(
                    children: [
                      HeadingSection(text: "Popular Categories",
                      showActionButton: false,
                      ),
                      SizedBox(height: Sizes.spaceBetweenSections,),
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (ctx, position){
                            return VerticalImageText(onPressed: (){}, image: ImageStrings.smartPhone, title: "Smart Phone",
                            );
                          },
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    ],
                  )
                )
              ],
            ),)
          ],
        )
      ),
    );
  }
}

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
              child: const Center(
                child: Image(
                  image: AssetImage(
                    ImageStrings.smartPhone
                  )
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














