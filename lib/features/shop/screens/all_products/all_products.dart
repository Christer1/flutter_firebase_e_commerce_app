import 'package:e_commerce_app_with_firebase/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/products/sortable/sortable.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('All Products'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TSortableProducts(),
        
        ),
      ),
    );
  }
}
