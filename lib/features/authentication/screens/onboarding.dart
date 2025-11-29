import 'package:apna_store/utils/constants/image_strings.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes_strings.dart';
import '../../../utils/constants/text_strings.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            children: [
              Column(
                children: [
                  Image(image: AssetImage(ImageStrings.onboardingImageOne),
                  width: AppHelperFunctions.screenWidth(context) * 0.8,
                    height: AppHelperFunctions.screenHeight(context) * 0.6,
                  ),
                  Text(TextStrings.onboardingTitleOne,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: Sizes.spaceBetweenItems
                  ),
                  Text(TextStrings.onboardingSubtitleOne,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ]
          )
        ]
      )
    );
  }
}
