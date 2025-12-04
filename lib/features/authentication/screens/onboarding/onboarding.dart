import 'package:apna_store/features/authentication/screens/onboarding/widgets/onboardingpage.dart';
import 'package:apna_store/utils/constants/image_strings.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:apna_store/utils/logging/logging.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/devices/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

import '../../controllers/controller_onboarding/onboarding_controller.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    AppLogging.debug("OnboardingScreen build");
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(image: ImageStrings.onboardingImageOne, title: TextStrings.onboardingTitleOne, subtitle: TextStrings.onboardingSubtitleOne,),
              OnBoardingPage(image: ImageStrings.onboardingImageTwo, title: TextStrings.onboardingTitleTwo, subtitle: TextStrings.onboardingSubtitleTwo),
              OnBoardingPage(image: ImageStrings.onboardingImageThree, title: TextStrings.onboardingTitleThree, subtitle: TextStrings.onboardingSubtitleThree)
            ]
          ),
          Positioned(
            top: DeviceUtils.getAppbarHeight(),
            right: Sizes.defaultSpace,
            child: TextButton(onPressed: (){
              controller.skipPage();
            }, child: const Text("Skip")),
          ),
          Positioned(
            bottom: DeviceUtils.getBottomNavigationBarHeight(context) + 25,
            left: Sizes.defaultSpace,
            child: SmoothPageIndicator(
              controller: controller.pageController,
              onDotClicked: controller.doNavigationClick,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: AppHelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.black,
                dotHeight: 6
              )
            ),
          ),
          Positioned(
            right: Sizes.defaultSpace,
            bottom: DeviceUtils.getBottomNavigationBarHeight(context),
              child: ElevatedButton(onPressed: (){
                controller.nextPage();
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                //backgroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.primary : AppColors.black
              ), child: Icon(Icons.arrow_back_ios_new, textDirection: TextDirection.rtl,
              color: AppColors.white,
              ),
              ),
          )
        ]
      )
    );
  }
}


