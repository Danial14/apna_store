import 'package:apna_store/features/shop/screens/home/widgets/homeappbar.dart';
import 'package:apna_store/utils/devices/device_utility.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/appbar/customappbar.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header.dart';
import '../../../../common/widgets/product_cart_widget/custom_cart.dart';
import '../../../../utils/constants/colors.dart';
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
              children: [
                HomeAppBar(),
                SizedBox(height: Sizes.spaceBetweenSections,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
                  child: Container(
                    width: DeviceUtils.getScreenWidth(context),
                    padding: EdgeInsets.all(Sizes.md),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
                      border: Border.all(color: AppColors.grey)
                    ),
                    child: Row(
                      children: [
                        Icon(Iconsax.search_normal,
                        color: AppColors.darkGrey,
                        ),
                        SizedBox(width: Sizes.spaceBetweenItems,),
                        Text("Search in Store",
                        style: Theme.of(context).textTheme.bodySmall
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),)
          ],
        )
      ),
    );
  }
}










