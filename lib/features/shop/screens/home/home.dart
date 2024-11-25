import 'package:e_commerce_app_with_firebase/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app_with_firebase/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_app_with_firebase/features/shop/screens/home/widget/home_appbar.dart';
import 'package:e_commerce_app_with_firebase/features/shop/screens/home/widget/home_categories.dart';
import 'package:e_commerce_app_with_firebase/features/shop/screens/home/widget/promo_slider.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/colors.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/image_strings.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Searchbar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Headings
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        SizedBox(height: TSizes.spaceBtwSections),

                        //Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),
            //body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSectionHeading(
                    title: "Popular Products",
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //Popular products
                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
