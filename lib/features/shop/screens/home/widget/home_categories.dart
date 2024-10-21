
import 'package:e_commerce_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/features/shop/screens/order/sub_category/sub_categories.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
        return TVerticalImageText(image: TImages.sportIcon, title: "Shoes", ontap: () => Get.to(() => const SubCategoriesScreen()),);
      },),
    );
  }
}
