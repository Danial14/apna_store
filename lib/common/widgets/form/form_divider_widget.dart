import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Divider(
              color: isDark ? AppColors.lightGrey : AppColors.darkGrey,
              thickness: 0.5,
              indent: 50,
              endIndent: 15,
            ),
          ),
          Text(TextStrings.orSignInWith.toUpperCase()),
          Flexible(
            child: Divider(
                color: isDark ? AppColors.lightGrey : AppColors.darkGrey,
                thickness: 0.5,
                indent: 15,
                endIndent: 50
            ),
          )
        ]
    );
  }
}