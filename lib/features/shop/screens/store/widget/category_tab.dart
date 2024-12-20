

import 'package:e_commerce_app_with_firebase/common/widgets/brand/t_brand_showcase.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      
      children: [
        Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //brands
            const TBrandShowcase(images: [
              TImages.productImage1,
              TImages.productImage2,
              TImages.productImage3,
            ],),
            const TBrandShowcase(images: [
              TImages.productImage1,
              TImages.productImage2,
              TImages.productImage3,
            ],),
            const SizedBox(height: TSizes.spaceBtwItems,),
      
            //products
            TSectionHeading(title: 'You might like', showActionButton: true, onPressed: (){},),
            const SizedBox(height: TSizes.spaceBtwItems,),
      
            TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
            const SizedBox(height: TSizes.spaceBtwSections,),
          ],
        ),
      
      ),
      ]
    );
  }
}