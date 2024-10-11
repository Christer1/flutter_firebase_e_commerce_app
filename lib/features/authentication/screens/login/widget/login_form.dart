import 'package:e_commerce_app/features/authentication/screens/password_configuration.dart/forgot_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
                
      children: [
        //Email 
        TextFormField(
           decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
                
        //Password 
        TextFormField(
          obscureText: true,
           decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.password_check), labelText: TTexts.password, suffix: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                
        //Remmeber Me & Forgot Password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Remember me
            Row(
              children: [
                Checkbox(value: true, onChanged: (value){}),
                const Text(TTexts.rememberMe),
              ],
            ),
            //Forgot password
            TextButton(onPressed: () => Get.to(() => const ForgotPassword()), child: const Text(TTexts.forgetPassword)),
          ],
        ),
        //Sign in button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(TTexts.signIn))),
        const SizedBox(height: TSizes.spaceBtwItems,),
                
        //Create account button
        SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignUpScreen()), child: const Text(TTexts.createAccount))),
        const SizedBox(height: TSizes.spaceBtwSections,),
      ],
    ),
                  );
  }
}