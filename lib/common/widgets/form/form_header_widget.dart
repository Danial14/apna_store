

import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes_strings.dart';
import '../../../utils/constants/text_strings.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(height: 150,
          image: AssetImage(isDark ? ImageStrings.lightAppLogo : ImageStrings.darkAppLogo),
        ),
        Text(TextStrings.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium
        ),
        SizedBox(height: Sizes.sm),
        Text(TextStrings.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}