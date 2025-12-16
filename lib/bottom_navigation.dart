import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});
  final NavigationController navigationController = NavigationController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: [
        // screens
        NavigationDestination(icon: Icon(Iconsax.home),
        label: "Home",
        ),
        NavigationDestination(icon: Icon(Iconsax.search_normal),
        label: "Search",
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
      ),
      body: Obx((){
        return navigationController.screens[navigationController.selectedIndex.value];
      }),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.orange),
  ];
}