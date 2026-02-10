import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'features/shop/screens/home/home.dart';
import 'features/shop/screens/store/store.dart';
import 'features/wishlist/wishlist.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});
  final NavigationController navigationController = NavigationController();
  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx((){
        return NavigationBar(destinations: [
          // screens
          NavigationDestination(icon: Icon(Iconsax.home),
            label: "Home",
          ),
          NavigationDestination(icon: Icon(Iconsax.shop),
            label: "Store",
          ),
          NavigationDestination(icon: Icon(Iconsax.heart),
            label: "Wishlist",
          ),
          NavigationDestination(icon: Icon(Iconsax.user),
            label: "Profile",
          )
        ],
          selectedIndex: navigationController.selectedIndex.value,
          onDestinationSelected: (index){
            navigationController.selectedIndex.value = index;
          },
          height: 80,
          elevation: 0,
          backgroundColor: isDark ? AppColors.white : AppColors.black,
          indicatorColor: isDark ? AppColors.black.withOpacity(0.1) : AppColors.white.withOpacity(0.1),
        );
      }),
      body: Obx((){
        return navigationController.screens[navigationController.selectedIndex.value];
      }),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Home(),
    Store(),
    FavouriateScreen(),
    Container(color: Colors.orange),
  ];
}