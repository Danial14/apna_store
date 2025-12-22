import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/appbar/customappbar.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header.dart';
import '../../../../common/widgets/product_cart_widget/custom_cart.dart';
import '../../../../utils/constants/colors.dart';
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
                CustomAppbar(
                  title: Column(
                    children: [
                      Text(TextStrings.homeAppbarTitle,
                      style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.grey)
                      ),
                      Text(TextStrings.homeAppbarSubTitle,
                      style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),
                      )
                    ],
                  ),
                  actions: [
                    CustomCartWidget(onPressed: (){},
                      iconColor: AppColors.white,
                    )
                  ]
                )
              ],
            ),)
          ],
        )
      ),
    );
  }
}








