import 'package:apna_store/common/widgets/appbar/customappbar.dart';
import 'package:apna_store/common/widgets/products/product_cart_widget/custom_cart.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: CustomAppbar(
        title: Text("Store",
        style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CustomCartWidget(onPressed: (){}, iconColor: AppColors.dark)
        ]
      ),
      body: NestedScrollView(headerSliverBuilder: (ctx, isInnerScrollable){
        return [
          SliverAppBar(
            pinned: true,
            floating: true,
            backgroundColor: isDark ? AppColors.light : AppColors.dark,
            expandedHeight: 440,
            automaticallyImplyLeading: false,
          )
        ];
      }, body: Container()),
    );
  }
}
