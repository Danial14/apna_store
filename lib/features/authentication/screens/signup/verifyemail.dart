import 'package:apna_store/features/authentication/screens/login/login.dart';
import 'package:apna_store/features/authentication/screens/signup/success_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Get.to((){
              return LoginScreen();
            });
          }, icon: Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            Image(
              image: AssetImage(ImageStrings.deliveredEmailIllustration,
              ),
              width: AppHelperFunctions.screenWidth(context) * 0.6,
            ),
            SizedBox(height: Sizes.spaceBetweenSections),
            Text(TextStrings.confirmEmail,
            style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: Sizes.spaceBetweenItems),
            Text("support@gmail.com",
            style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center
            ),
            SizedBox(height: Sizes.spaceBetweenSections,),
            Text(TextStrings.confirmEmailSubtitle,
            style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center
            ),
            SizedBox(height: Sizes.spaceBetweenSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.to((){
                  return SuccessScreen(callback: (){
                    Get.offAll(
                            (){
                          return LoginScreen();
                        }
                    );
                  },
                  imageTitle: TextStrings.yourAccountCreatedTitle,
                    imageSubtitle: TextStrings.confirmEmailSubtitle,
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.primary : AppColors.dark
              ), child: Text(TextStrings.continueText,

              )
              ),
            ),
            SizedBox(height: Sizes.spaceBetweenItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){

              }, child: Text(TextStrings.resendEmail))
            )
          ],
        )
        ),
      )
    );
  }
}
