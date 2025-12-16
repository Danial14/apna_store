import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.primary
              ),
              padding: EdgeInsets.all(0),
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      color: AppColors.textWhite.withOpacity(0.1)
                    ),
                    padding: const EdgeInsets.all(0),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
