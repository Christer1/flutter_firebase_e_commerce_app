

import 'package:e_commerce_app_with_firebase/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_with_firebase/features/shop/screens/order/widgets/order_list.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),

      ),
      body: const Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
      //orders
      child: TOrderListItems(),
      ),
    );
  }
}