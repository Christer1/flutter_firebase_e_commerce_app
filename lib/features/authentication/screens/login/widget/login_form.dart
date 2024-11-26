import 'package:e_commerce_app_with_firebase/features/authentication/controllers/login/login_controller.dart';
import 'package:e_commerce_app_with_firebase/features/authentication/screens/password_configuration.dart/forgot_password.dart';
import 'package:e_commerce_app_with_firebase/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/text_strings.dart';
import 'package:e_commerce_app_with_firebase/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return 
    Form(
      key: controller.loginFormKey,
        child: Padding(
      padding:
          const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //email
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          //password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => TValidator.validateEmptyText('Password', value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
    
          //remember me and forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //remember me
              Row(
                children: [
                  Obx(()=> Checkbox(value: controller.rememberMe.value, onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value)),
                  const Text(TTexts.rememberMe),
                ],
              ),
    
              //forgot password
              TextButton(
                  onPressed: () => Get.to(()=> const ForgotPassword()),
                  child: const Text(TTexts.forgetPassword))
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
    
          //sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSignIn(), child: const Text(TTexts.signIn)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          //create account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () => Get.to(()=> const SignUpScreen()),
                child: const Text(TTexts.createAccount)),
          ),
        ],
      ),
    ));
 
  }
}