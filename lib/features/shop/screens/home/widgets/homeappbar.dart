import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/customappbar.dart';
import '../../../../../common/widgets/product_cart_widget/custom_cart.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
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
    );
  }
}