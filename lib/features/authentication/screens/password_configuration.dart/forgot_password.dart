import 'package:e_commerce_app/features/authentication/screens/password_configuration.dart/reset_password.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //Headings
              Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections * 2),
   

            // Text filed
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right) 
              ),
            ),
              const SizedBox(height: TSizes.spaceBtwSections),


            
            // Submit Buttons
            SizedBox(width: double.infinity , child: ElevatedButton(onPressed: () => Get.to(() => const ResetPassword()), child: const Text(TTexts.submit)))

          ],
        ),
        ),
    );
  }
}