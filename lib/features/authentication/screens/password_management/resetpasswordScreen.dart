import 'package:dorminic_co/features/authentication/screens/login/login.dart';
import 'package:dorminic_co/features/authentication/screens/password_management/resetpasswordlinkScreen.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/constants/text_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          onPressed: () => Get.offAll(() => const LoginScreen()),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Title Sub
              Text(
                TextsProvider.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                TextsProvider.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: AppSizes.spaceBtwSections),

              TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TextsProvider.email,
                //labelStyle: TextStyle(fontSize: 16)
              ),
            ),
        

              //Button
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const ResetPasswordLinkScreen()),
                  child: const Text(TextsProvider.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
