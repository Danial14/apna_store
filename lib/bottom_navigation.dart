import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

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
      ]),
    );
  }
}
