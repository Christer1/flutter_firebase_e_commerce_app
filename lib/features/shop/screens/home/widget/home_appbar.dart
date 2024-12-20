import 'package:e_commerce_app_with_firebase/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/loaders/shimmer_effect.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app_with_firebase/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/colors.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final UserController controller = Get.put(UserController());
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Obx(() {
            if (controller.profileLoading.value) {
              return const TShimmerEffect(width: 80, height: 15);
            } else {
              return Text(
                controller.user.value.fullName,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: TColors.white),
              );
            }
          }),
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          iconColor: Colors.white,
        )
      ],
    );
  }
}