import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widget/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widget/home_categories.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [

                  //Appbar 
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //Searchbar
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //Headings
                  Padding(padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: TColors.white ,),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      //Categories
                      THomeCategories(),

                    ],
                  ),)
                ],
              )
              ),

              //body
              
          ],
        ),
      ),
    );
  }
}
