import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(icon: Icon(CupertinoIcons.clear),
          onPressed: (){
            Get.back();
          },
          )
        ],
      ),
      body: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            Image(
              image: AssetImage(ImageStrings.accountCreated,
              ),
              width: AppHelperFunctions.screenWidth(context) * 0.6,
            ),
            SizedBox(height: Sizes.spaceBetweenSections),
            Text('imageTitle',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: Sizes.spaceBetweenItems),
            Text("support@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center
            ),
            SizedBox(height: Sizes.spaceBetweenSections,),
            Text('imageSubtitle',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center
            )
          ],
        ),
      ),
    );
  }
}
