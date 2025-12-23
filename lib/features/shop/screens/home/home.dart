import 'package:apna_store/features/shop/screens/home/widgets/homeappbar.dart';
import 'package:apna_store/utils/devices/device_utility.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/appbar/customappbar.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header.dart';
import '../../../../common/widgets/product_cart_widget/custom_cart.dart';
import '../../../../common/widgets/search_container/search_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeader(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                SizedBox(height: Sizes.spaceBetweenSections,),
                SearchContainer(text: "Search in Store", icon: Iconsax.search_normal),
                SizedBox(height: Sizes.spaceBetweenSections),
                Padding(
                  padding: EdgeInsets.only(left: Sizes.defaultSpace),
                  child: Column(
                    children: [
                      HeadingSection(text: "Popular Categories",
                      buttonText: "",
                      )
                    ],
                  )
                )
              ],
            ),)
          ],
        )
      ),
    );
  }
}

class HeadingSection extends StatelessWidget {
  final String text, buttonText;
  final Color? textColor;
  final bool showActionButton;
  const HeadingSection({
    super.key,
    required this.text,
    required this.buttonText,
    this.showActionButton = true,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,
        style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(showActionButton) TextButton(onPressed: (){},
        child: Text(buttonText),
        )
      ],
    );
  }
}












