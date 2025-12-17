import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/container/circular_container.dart';
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
              child: SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                        top: -150,
                        left: -250,
                        child: CircularShape(backgroundColor: AppColors.textWhite.withOpacity(0.1),)),
                    Positioned(
                        top: 100,
                        right: -300,
                        child: CircularShape(backgroundColor: AppColors.textWhite.withOpacity(0.1),)),
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}


