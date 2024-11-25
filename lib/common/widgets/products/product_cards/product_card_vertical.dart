import 'package:e_commerce_app_with_firebase/common/styles/shadows.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/icon/t_circular_icon.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/products/t_rounded_container.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/texts/t_product_price_text.dart';
import 'package:e_commerce_app_with_firebase/features/shop/screens/product_details/product_detail.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/colors.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_app_with_firebase/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    //Container with side padding, color, edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            //Thumbnail, Wishlist button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbnail image
                  const TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),

                  // -- Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            //Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                      title: 'Greeen Nike Air Shoe', smallSize: true),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: "Nike")
                ],
              ),
            ),

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '35.9'),
                ),

                // Add to cart button
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      )),
                  child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
