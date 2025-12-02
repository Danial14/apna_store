import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  final String image, title, subtitle;
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.defaultSpace),
      child: Column(
        children: [
          Image(image: AssetImage(image),
            width: AppHelperFunctions.screenWidth(context) * 0.8,
            height: AppHelperFunctions.screenHeight(context) * 0.6,
          ),
          Text(title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
              height: Sizes.spaceBetweenItems
          ),
          Text(subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}