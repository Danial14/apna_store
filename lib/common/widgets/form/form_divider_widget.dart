import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.isDark,
    required this.text
  });

  final bool isDark;
  final String text;

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
          Text(text),
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