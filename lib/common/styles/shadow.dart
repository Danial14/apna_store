import 'package:apna_store/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class CustomShadow{
  static final verticalShadow = BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.2),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalShadow = BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.2),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}