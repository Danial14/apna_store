import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes_strings.dart';
import '../../../../../utils/constants/text_strings.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          SizedBox(width: 24,child: Checkbox(value: true, onChanged: (val){})),
          const SizedBox(width: Sizes.spaceBetweenItems),
          Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: TextStrings.iAgreeTo,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 10
                    )
                ),
                TextSpan(
                    text: TextStrings.privacyPolicy,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDark ? AppColors.light : AppColors.primary,
                        decoration: TextDecoration.underline
                    ).copyWith(fontSize: 12,
                        fontWeight: FontWeight.bold
                    )
                ),
                TextSpan(
                    text: " and ",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 10
                    )
                ),
                TextSpan(
                    text: TextStrings.termsAndConditions,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDark ? AppColors.light : AppColors.primary,
                        decoration: TextDecoration.underline
                    ).copyWith(fontSize: 12,
                        fontWeight: FontWeight.bold
                    )
                )
              ]
          ))
        ]
    );
  }
}
