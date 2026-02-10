import 'package:apna_store/common/widgets/appbar/customappbar.dart';
import 'package:apna_store/common/widgets/layout/grid_layout.dart';
import 'package:apna_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../common/widgets/icons/circular_icon.dart';
import '../../utils/constants/sizes_strings.dart';

class FavouriateScreen extends StatelessWidget {
  const FavouriateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text("Wishlist",
        style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(isDark: false,
          icon: Iconsax.add,
            onPressed: (){

            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            CustomGrid(itemCount: 6, itemBuilder: (context, index){
              return VerticalProductCard();
            })
          ]
        )
        ),
      ),
    );
  }
}
