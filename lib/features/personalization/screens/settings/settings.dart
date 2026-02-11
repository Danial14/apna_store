import 'package:apna_store/common/widgets/appbar/customappbar.dart';
import 'package:apna_store/common/widgets/images/rounded_image.dart';
import 'package:apna_store/common/widgets/section_heading/section_heading.dart';
import 'package:apna_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/custom_shapes/container/primary_header.dart';
import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes_strings.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeader(child: Column(
              children: [
                CustomAppbar(
                  title: Text("Accounts",
                  style: Theme.of(context).textTheme.headlineMedium!.apply(
                    color: AppColors.white
                  ),
                  ),
                ),
                const SizedBox(height: Sizes.spaceBetweenItems),
                UserProfileTile(),
                const SizedBox(height: Sizes.spaceBetweenSections)
              ]
            ),
            ),
            // Body
            Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              children: [
                HeadingSection(text: "Account Settings",
                showActionButton: false,
                ),
                const SizedBox(height: Sizes.spaceBetweenItems),
                SettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: "My Addresses",
                  subtitle: "Shipping address",
                  onTap: (){

                  },
                ),
                SettingsMenuTile(
                  icon: Iconsax.shopping_bag,
                  title: "My Addresses",
                  subtitle: "Shipping address",
                  onTap: (){

                  },
                ),
                SettingsMenuTile(
                  icon: Iconsax.bag_tick,
                  title: "My Addresses",
                  subtitle: "Shipping address",
                  onTap: (){

                  },
                ),
                SettingsMenuTile(
                  icon: Iconsax.bank,
                  title: "My Addresses",
                  subtitle: "Shipping address",
                  onTap: (){

                  },
                ),
                SettingsMenuTile(
                  icon: Iconsax.discount_shape,
                  title: "My Addresses",
                  subtitle: "Shipping address",
                  onTap: (){

                  },
                ),
                SettingsMenuTile(
                  icon: Iconsax.notification,
                  title: "My Addresses",
                  subtitle: "Shipping address",
                  onTap: (){

                  },
                ),
                SettingsMenuTile(
                  icon: Iconsax.security_card,
                  title: "My Addresses",
                  subtitle: "Shipping address",
                  onTap: (){

                  },
                ),
                const SizedBox(height: Sizes.spaceBetweenSections,),
                HeadingSection(text: "App Settings",
                showActionButton: false,
                ),
                SettingsMenuTile(icon: Iconsax.document_upload,
                    title: "Load Data",
                    subtitle: "Upload Data"),
                SettingsMenuTile(icon: Iconsax.location,
                title: "Geolocation",
                  subtitle: "Enable Geolocation",
                trailing: Switch(value: true,
                onChanged: (value){

                },
                ),
                ),
                SettingsMenuTile(icon: Iconsax.security_user,
                  title: "Safe Mode",
                  subtitle: "Enable Geolocation",
                  trailing: Switch(value: false,
                    onChanged: (value){

                    },
                  ),
                ),
                SettingsMenuTile(icon: Iconsax.image,
                  title: "Image Gallery",
                  subtitle: "Set Image Quality",
                  trailing: Switch(value: false,
                    onChanged: (value){

                    },
                  ),
                ),

                // Logout button
                const SizedBox(height: Sizes.spaceBetweenSections,),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: (){
                    },
                    child: const Text("Logout"),
                  )
                ),
                const SizedBox(
                  height: Sizes.spaceBetweenSections * 2.5,
                )
              ],
            ),
            )
          ]
        )
      ),
    );
  }
}

