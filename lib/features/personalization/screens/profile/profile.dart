import 'package:apna_store/common/widgets/section_heading/section_heading.dart';
import 'package:apna_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:apna_store/utils/constants/sizes_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/appbar/customappbar.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: const Text("Profile"),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            Sizes.defaultSpace
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(
                      image: ImageStrings.user,
                      width: 80,
                      height: 80,
                      isDark: isDark,
                    ),
                    TextButton(onPressed: (){

                    },
                    child: const Text(
                      "Change Profile Picture"
                    ),
                    )
                  ]
                ),
              ),

              // Details
              const SizedBox(height: Sizes.spaceBetweenItems / 2,),
              Divider(),
              const SizedBox(height: Sizes.spaceBetweenItems),
              const HeadingSection(text: "Profile Information",
              showActionButton: false,
              ),
              const SizedBox(height: Sizes.spaceBetweenItems,),
              ProfileMenu(onPressed: (){},
              title: "Name",
                value: "Code",
              )
            ],
          )
        )
      )
    );
  }
}

