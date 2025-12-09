import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes_strings.dart';

class SocialFooter extends StatelessWidget {
  const SocialFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: (){},
            icon: Image.asset(ImageStrings.google,
              width: Sizes.iconMd,
              height: Sizes.iconMd,
            ),
          ),
        ),
        SizedBox(width: Sizes.spaceBetweenItems),
        Container(
            decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(100)
            ),
            child: IconButton(
                onPressed: (){},
                icon: Image(
                    image: AssetImage("assets/logos/facebook-logo.png"),
                    width: Sizes.iconMd,
                    height: Sizes.iconMd
                )
            )
        )
      ],
    );
  }
}