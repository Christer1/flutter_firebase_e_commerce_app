import 'package:e_commerce_app_with_firebase/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/products/t_rounded_container.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/colors.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/enums.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_app_with_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, 
    this.showBorder = true, 
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //icon
            Flexible(
              child: TCircularImage(
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                    THelperFunctions.isDarkMode(context)
                        ? TColors.white
                        : TColors.black,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
          
            //text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}