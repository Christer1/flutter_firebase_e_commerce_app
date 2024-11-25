
import 'package:e_commerce_app_with_firebase/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_with_firebase/features/personalization/screens/address/widgets/add_new_address.dart';
import 'package:e_commerce_app_with_firebase/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/colors.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
      child: const Icon(Iconsax.add, color: TColors.white,),
      
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
             TSingleAddress(selectedAddress: false),
             TSingleAddress(selectedAddress: true),
             TSingleAddress(selectedAddress: false),
             TSingleAddress(selectedAddress: false),
             TSingleAddress(selectedAddress: false),
            ],
          ),
        
        ),
      ),
    );
  }
}