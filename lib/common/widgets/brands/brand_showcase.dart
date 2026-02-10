import 'package:flutter/material.dart';

import '../../../utils/constants/sizes_strings.dart';
import '../custom_shapes/container/circular_container.dart';
import 'brand_card.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalBrandCard(),
        Row(
          children: images.map((image){
            return _buildProductCard(context, image);
          }).toList(),
        )
      ],
    );
  }
}

Widget _buildProductCard(BuildContext context, String image){
  return Expanded(
    child: CircularShape(
        backgroundColor: Colors.transparent,
        height: 100,
        margin: const EdgeInsets.only(right: Sizes.sm),
        padding: const EdgeInsets.all(Sizes.md),
        showBorder: true,
        child: Image.asset(image)
    ),
  );
}