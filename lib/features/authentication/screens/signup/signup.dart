import 'package:apna_store/utils/constants/text_strings.dart';
import 'package:apna_store/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/form/form_divider_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(
          Sizes.defaultSpace
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TextStrings.signUpTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: Sizes.spaceBetweenSections,),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: TextStrings.firstName,
                              prefixIcon: Icon(Iconsax.user)
                          ),
                          ),
                        ),
                        SizedBox(width: Sizes.spaceBetweenInputFields),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: TextStrings.lastName,
                              prefixIcon: Icon(Iconsax.user)
                            )
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: Sizes.spaceBetweenInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: TextStrings.userName,
                        prefixIcon: Icon(Iconsax.user_edit)
                      )
                    ),
                    SizedBox(height: Sizes.spaceBetweenInputFields),
                    TextFormField(
                        decoration: InputDecoration(
                            labelText: TextStrings.email,
                            prefixIcon: Icon(Iconsax.direct)
                        )
                    ),
                    SizedBox(height: Sizes.spaceBetweenInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: TextStrings.phone,
                        prefixIcon: Icon(Iconsax.call)
                      )
                    ),
                    SizedBox(height: Sizes.spaceBetweenInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: TextStrings.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash)
                      )
                    ),
                    SizedBox(height: Sizes.spaceBetweenSections),
                    Row(
                      children: [
                        SizedBox(width: 24,child: Checkbox(value: true, onChanged: (val){})),
                        const SizedBox(width: Sizes.spaceBetweenItems),
                        Text.rich(TextSpan(
                          children: [
                            TextSpan(
                              text: TextStrings.iAgreeTo,
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontSize: 10
                              )
                            ),
                            TextSpan(
                              text: TextStrings.privacyPolicy,
                              style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: isDark ? AppColors.light : AppColors.primary,
                                decoration: TextDecoration.underline
                              ).copyWith(fontSize: 12,
                              fontWeight: FontWeight.bold
                              )
                            ),
                            TextSpan(
                              text: " and ",
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontSize: 10
                              )
                            ),
                            TextSpan(
                              text: TextStrings.termsAndConditions,
                              style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: isDark ? AppColors.light : AppColors.primary,
                                decoration: TextDecoration.underline
                              ).copyWith(fontSize: 12,
                              fontWeight: FontWeight.bold
                              )
                            )
                          ]
                        ))
                      ]
                    ),
                    const SizedBox(height: Sizes.spaceBetweenSections,),
                    SizedBox(width: double.infinity,
                    child: ElevatedButton(onPressed: (){},
                    child: Text(TextStrings.signUpButtonText)
                    )
                    ),
                    FormDivider(isDark: isDark, text: TextStrings.signUpWith,)
                  ]
                )
              )
            ]
          )
        ),
      ),
    );
  }
}
