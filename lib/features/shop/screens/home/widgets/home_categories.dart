import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (ctx, position){
          return VerticalImageText(onPressed: (){}, image: ImageStrings.smartPhone, title: "Smart Phone",
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}