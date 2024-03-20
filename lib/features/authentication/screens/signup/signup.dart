
import 'package:dorminic_co/features/authentication/screens/login/widgets/loginoauth.dart';
import 'package:dorminic_co/features/authentication/screens/login/widgets/oauthtext.dart';
import 'package:dorminic_co/features/authentication/screens/signup/widgets/signupform.dart';
import 'package:dorminic_co/features/authentication/screens/signup/widgets/signupheader.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
              left: AppSizes.defaultSpace,
              bottom: AppSizes.defaultSpace,
              right: AppSizes.defaultSpace),
          child: Column(
            children: [
              SignupHeader(dark: dark),
              const SignupForm(),
              OauthTexts(dark: dark),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              const LoginOauths()
            ],
          ),
        ),
      ),
    );
  }
}
