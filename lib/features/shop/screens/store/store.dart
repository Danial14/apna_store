import 'package:apna_store/common/widgets/appbar/customappbar.dart';
import 'package:apna_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:apna_store/common/widgets/layout/grid_layout.dart';
import 'package:apna_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:apna_store/common/widgets/products/product_cart_widget/custom_cart.dart';
import 'package:apna_store/common/widgets/section_heading/section_heading.dart';
import 'package:apna_store/utils/constants/image_strings.dart';
import 'package:apna_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/search_container/search_container.dart';
import '../../../../common/widgets/tabbar/custom_tabbar.dart';
import '../../../../common/widgets/texts/brand_title_text.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/sizes_strings.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppbar(
          title: Text("Store",
          style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CustomCartWidget(onPressed: (){}, iconColor: AppColors.dark)
          ]
        ),
        body: NestedScrollView(headerSliverBuilder: (ctx, isInnerScrollable){
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: isDark ? AppColors.dark : AppColors.light,
              expandedHeight: 440,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(padding: EdgeInsets.all(Sizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                children: [
                  // Search bar
                  SizedBox(height: Sizes.spaceBetweenItems,),
                  SearchContainer(
                    text: "Search",
                    showBorder: true,
                    icon: Iconsax.search_normal,
                    showBackground: false,
                    padding: EdgeInsets.zero,
                  ),
                  SizedBox(height: Sizes.spaceBetweenSections,),
                  // Feature brands
                  HeadingSection(text: "Feature Brands",
                  showActionButton: true,
                    onPressed: (){

                    },
                  ),
                  SizedBox(height: Sizes.spaceBetweenItems / 1.5),
                  CustomGrid(itemCount: 4, itemBuilder: (ctx, index){
                    return GestureDetector(
                      onTap: (){

                      },
                      child: CircularShape(
                        padding: const EdgeInsets.all(Sizes.sm),
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            Flexible(
                              child: CircularImage(isDark: isDark,
                                image: ImageStrings.productImageOne,
                                overlayColor: isDark ? AppColors.light : AppColors.dark,
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            const SizedBox(width: Sizes.spaceBetweenItems / 2),
                            // Text
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const BrandTitleText(title: "Nike",
                                    brandTextSize: TextSizes.large,
                                  ),
                                  Text(
                                      "256 products",
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.labelMedium
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  maxExtent: 80,
                  ),

                ]
              ),
              ),
              bottom: CustomTabbar(tabs: [
                Tab(text: "Sports",),
                Tab(text: "Furniture",),
                Tab(text: "Electronics",),
                Tab(text: "Cosmetics",),
                Tab(text: "Clothes",)
              ],),
            )
          ];
        }, body: TabBarView(children: [
          Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              children: [
                // Brands
                CircularShape(
                  backgroundColor: Colors.transparent,
                  margin: EdgeInsets.only(bottom: Sizes.spaceBetweenItems),
                  child: Column(
                    children: [
                      VerticalProductCard()
                    ],
                  ),
                )
              ],
            )
          )
        ])),
      ),
    );
  }
}


