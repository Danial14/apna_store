import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CustomCartWidget extends StatelessWidget {

  final VoidCallback onPressed;
  final Color? iconColor;
  const CustomCartWidget({
    super.key,
    required this.onPressed,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: (){},
            icon: Icon(Iconsax.shopping_bag,
              color: isDark ? AppColors.light : AppColors.dark,
            )
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.black.withOpacity(0.5)
            ),
            child: Center(
                child: Text("2",
                    style : Theme.of(context).textTheme.labelLarge!.apply(
                        color : AppColors.white,
                        fontSizeFactor: 0.8
                    )
                )
            ),
          ),
        )
      ],
    );
  }
}