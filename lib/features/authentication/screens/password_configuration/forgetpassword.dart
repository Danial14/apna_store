import 'package:apna_store/utils/constants/sizes_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TextStrings.forgotPassword,
          style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: Sizes.spaceBetweenItems,),
          Text(TextStrings.forgotPasswordSubTitle,
          style: Theme.of(context).textTheme.labelMedium
          ),
          SizedBox(height: Sizes.spaceBetweenSections * 2,),
          TextFormField(
            decoration: InputDecoration(
              labelText: TextStrings.email,
              prefixIcon: const Icon(Iconsax.direct_right)
            ),
          ),
          SizedBox(height: Sizes.spaceBetweenSections),
          SizedBox(width: double.infinity,
          child: ElevatedButton(onPressed: (){

          }, child: const Text(TextStrings.submit)),
          )
        ],
      )
      ),
    );
  }
}
