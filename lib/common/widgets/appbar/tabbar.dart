import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/devices/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TTapBar extends StatelessWidget implements PreferredSizeWidget {
  const TTapBar(
      {super.key,
      required this.tabs,
 });

  final List<Widget> tabs;
  
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      color: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,

      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: TabBar(
          isScrollable: true,
          indicatorColor: TColors.primary,
          labelColor: dark
              ? TColors.white
              : TColors.black,
          tabs: tabs,
          unselectedLabelColor: TColors.darkGrey,
          ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}