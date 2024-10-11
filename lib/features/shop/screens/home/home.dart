import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widget/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widget/home_categories.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  Padding(padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: TColors.white ,),
                      SizedBox(height: TSizes.spaceBtwItems),

                      //Categories
                      THomeCategories(),

                    ],
                  ),)
                ],
              )
              ),

              //body
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: TRoundedImage(imageUrl: TImages.productImage1),
              )
          ],
        ),
      ),
    );
  }
}

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key, this.width = 150, this.height = 150, required this.imageUrl,  this.applyImageRadius = false, this.border, this.backgroundColor = TColors.light, this.fit = BoxFit.contain, this.padding,  this.isNetWorkImage = false, this.onPressed,  this.borderRadius = TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetWorkImage;
  final VoidCallback? onPressed;
  final double borderRadius;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero , child: Image(image: isNetWorkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider, fit: fit,)),
      ),
    );
  }
}
