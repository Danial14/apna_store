import 'package:flutter/material.dart';

import '../../../utils/constants/sizes_strings.dart';
import '../products/product_card/product_card_vertical.dart';

class CustomGrid extends StatelessWidget {
  final int itemCount;
  final double? maxExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  const CustomGrid({super.key,
  required this.itemCount,
    required this.itemBuilder,
    this.maxExtent = 288
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            mainAxisSpacing: Sizes.gridViewSpacing,
            crossAxisSpacing: Sizes.gridViewSpacing,
            mainAxisExtent: maxExtent
        ),
        itemBuilder: itemBuilder);
  }
}
