import 'package:apna_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:apna_store/features/shop/screens/home/widgets/homeappbar.dart';
import 'package:apna_store/utils/devices/device_utility.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/appbar/customappbar.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header.dart';
import '../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../common/widgets/images/rounded_image.dart';
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
                      HomeCategories(),
                    ],
                  )
                )
              ],
            ),
            ),
            // body
            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: RoundedImage(imageUrl: ImageStrings.promoBannerTwo,),
            )
          ],
        )
      ),
    );
  }
}




















