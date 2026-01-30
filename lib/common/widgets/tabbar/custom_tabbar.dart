import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

class CustomTabbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomTabbar({super.key,
  required this.tabs
  });
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? AppColors.black : AppColors.white,
      child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: AppColors.primary,
          labelColor: isDark ? AppColors.white : AppColors.primary,
          unselectedLabelColor: AppColors.darkGrey,
        ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppbarHeight());
}
