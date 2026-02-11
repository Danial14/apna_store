import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/rounded_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: RoundedImage(
        imageUrl: ImageStrings.user,
        padding: EdgeInsets.zero,
        width: 50,
        height: 50,
      ),
      title: Text("User",
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),
      ),
      subtitle: Text("abc@test.com",
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white),
      ),
      trailing: IconButton(onPressed: (){}, icon: Icon(
        Iconsax.edit,
        color: AppColors.white,
      )
      ),
    );
  }
}