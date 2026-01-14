import 'package:apna_store/utils/constants/sizes_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/devices/device_utility.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingPressed;
  const CustomAppbar({super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.onLeadingPressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.md,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow ? IconButton(
          onPressed: (){
            Get.back();
            },
          icon: const Icon(Iconsax.arrow_left),
        ) : leadingIcon != null ? IconButton(onPressed: onLeadingPressed, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppbarHeight());
}
