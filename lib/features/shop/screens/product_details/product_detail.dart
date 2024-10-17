
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter/material.dart';
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      // bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //product image slider
            TProductImageSlider(),

            // //product details
            // Padding(
            //   padding: const EdgeInsets.only(
            //       right: TSizes.defaultSpace,
            //       left: TSizes.defaultSpace,
            //       bottom: TSizes.defaultSpace),
            //   child: Column(
            //     children: [
            //       //rating and share button
            //       const TRatingAndShare(),

            //       //price, title, stock, &brand
            //       const TProductMetaData(),

            //       //attributes
            //       const TProductAttributes(),
            //       const SizedBox(
            //         height: TSizes.spaceBtwSections,
            //       ),

            //       //checkout button
            //       SizedBox(
            //           width: double.infinity,
            //           child: ElevatedButton(
            //               onPressed: () {}, child: const Text('Checkout'))),
            //       const SizedBox(
            //         height: TSizes.spaceBtwSections,
            //       ),
            //       //description
            //       const TSectionHeading(
            //         title: 'Description',
            //         showActionButton: false,
            //       ),
            //       const SizedBox(
            //         height: TSizes.spaceBtwItems,
            //       ),
            //       const ReadMoreText(
            //         'This is a product description for blue nike sleeve less vest. There are more things that can be added but i am not in the mood to add them',
            //         trimLines: 2,
            //         trimMode: TrimMode.Line,
            //         trimCollapsedText: ' Show more',
            //         trimExpandedText: ' Less',
            //         moreStyle:
            //             TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            //         lessStyle:
            //             TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            //       ),

            //       //reviews
            //       const Divider(),
            //       const SizedBox(height: TSizes.spaceBtwItems,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           const TSectionHeading(title: 'Reviews (199)',  showActionButton: false,),
            //           IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18,), onPressed: () => Get.to(()=> const ProductReviewsScreen()), )
            //         ],
            //       ),
            //       const SizedBox(height: TSizes.spaceBtwSections,)
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}