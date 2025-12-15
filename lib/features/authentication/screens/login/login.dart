import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/devices/device_utility.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:apna_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/form/form_divider_widget.dart';
import '../../../../common/widgets/form/form_header_widget.dart';
import '../../../../common/widgets/form/social_footer.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../password_configuration/forgetpassword.dart';
import '../signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.spacingStyle,
          child: Column(
            children: [
              FormHeader(isDark: isDark),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: Sizes.spaceBetweenSections),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TextStrings.email
                        )
                      ),
                      SizedBox(height: Sizes.spaceBetweenInputFields),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                          labelText: TextStrings.password
                        ),

                      ),
                      SizedBox(height: Sizes.spaceBetweenInputFields / 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (val){}),
                              const Text(TextStrings.rememberMe)
                            ]
                          ),
                          TextButton(onPressed: (){
                            Get.to((){
                              return ForgetPassword();
                            });
                          },
                          child: const Text(TextStrings.forgotPassword)
                          )
                        ]
                      ),
                      SizedBox(height: Sizes.spaceBetweenSections),
                      SizedBox(width: double.infinity,
                      child: ElevatedButton(onPressed: (){},
                      child: const Text(TextStrings.signIn),
                      )
                      ),
                      SizedBox(height: Sizes.spaceBetweenInputFields),
                      SizedBox(width: double.infinity,
                      child: OutlinedButton(onPressed: (){
                        Get.to((){
                          return Signup();
                        });
                      }, child: const Text(TextStrings.createAccount)),
                      )
                    ],
                  ),
                )
              ),

              // Divider
               FormDivider(isDark: isDark, text: TextStrings.orSignInWith.toUpperCase()),
              SizedBox(height: Sizes.spaceBetweenSections,),
              SocialFooter()
            ],
          ),
        ),
      ),
    );
  }
}




