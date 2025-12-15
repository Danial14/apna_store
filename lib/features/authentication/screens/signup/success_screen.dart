import "package:apna_store/common/styles/spacing_styles.dart";
import "package:flutter/material.dart";
import 'package:get/get.dart';
import "../../../../utils/constants/colors.dart";
import "../../../../utils/constants/image_strings.dart";
import "../../../../utils/constants/sizes_strings.dart";
import "../../../../utils/constants/text_strings.dart";
import "../../../../utils/helpers/helper_functions.dart";
import "../login/login.dart";

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.imageTitle, required this.imageSubtitle, required this.callback});
  final String imageTitle, imageSubtitle;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.spacingStyle * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(ImageStrings.accountCreated,
                ),
                width: AppHelperFunctions.screenWidth(context) * 0.9,
              ),
              SizedBox(height: Sizes.spaceBetweenSections),
              Text(imageTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Sizes.spaceBetweenItems),
              Text("support@gmail.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center
              ),
              SizedBox(height: Sizes.spaceBetweenSections,),
              Text(imageSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center
              ),
              SizedBox(height: Sizes.spaceBetweenSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: callback,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.primary : AppColors.dark
                    ), child: Text(TextStrings.continueText,

                    )
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
