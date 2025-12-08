import 'package:apna_store/utils/devices/device_utility.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:apna_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(height: 150,
                  image: AssetImage(isDark ? ImageStrings.lightAppLogo : ImageStrings.darkAppLogo),
                  ),
                  Text(TextStrings.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium
                  ),
                  SizedBox(height: Sizes.sm),
                  Text(TextStrings.loginSubtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
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
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Checkbox(value: true, onChanged: (val){}),
                              const Text(TextStrings.rememberMe)
                            ]
                          ),
                          TextButton(onPressed: (){},
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
                      child: OutlinedButton(onPressed: (){}, child: const Text(TextStrings.createAccount)),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
