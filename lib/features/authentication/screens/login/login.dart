import 'package:e_commerce_app_with_firebase/common/styles/spacing_style.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app_with_firebase/features/authentication/screens/login/widget/login_form.dart';
import 'package:e_commerce_app_with_firebase/features/authentication/screens/login/widget/login_header.dart';
import 'package:e_commerce_app_with_firebase/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:e_commerce_app_with_firebase/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingwithAppBarHeight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
            child: Column(
              children: [
                // Logo, Title and Subtitle
                const TLoginHeader(),
                // Form
                const TLoginForm(),

              //Divider 
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    ),
  );
}


}
