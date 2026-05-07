import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utils/constants/sizes_strings.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Iconsax.star_1, color: Colors.amber,
              size: 24,
            ),
            SizedBox(width: Sizes.spaceBetweenItems / 2),
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: "5.0",
                          style: Theme.of(context).textTheme.bodyLarge
                      ),
                      TextSpan(
                          text: "(199)"
                      )
                    ]
                )
            )
          ],
        ),
        IconButton(
          onPressed: (){}, icon: Icon(
          Iconsax.share,
          size: Sizes.iconMd,
        ),
        ),

      ],
    );
  }
}