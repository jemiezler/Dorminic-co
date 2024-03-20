import 'package:dorminic_co/features/authentication/screens/signup/verfyemail.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/helpers/passwordvisibilitytoggle.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_provider.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    super.key,
  });

  @override
    _SignupFormState createState() => _SignupFormState();
  }

  class _SignupFormState extends State<SignupForm> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            //First name
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.personalcard),
                      labelText: TextsProvider.firstName
                    ),
                  ),
                ),
                const SizedBox(width: AppSizes.spaceBtwInputFields,),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.personalcard),
                      labelText: TextsProvider.lastName
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields,),
            
            //username
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: TextsProvider.username
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields,),
            
            //--Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TextsProvider.email
              ),
            ),
        
            const SizedBox(height: AppSizes.spaceBtwInputFields,),

            //--Phone
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                labelText: TextsProvider.phoneNo
              ),
            ),
        
            const SizedBox(height: AppSizes.spaceBtwInputFields,),
        
            //--password
            TextFormField(
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: 'Password',
                suffixIcon: PasswordVisibilityToggle(
                  obscureText: _obscurePassword,
                  onPressed: _togglePasswordVisibility,
                ),
              ),
            ),
        
            const SizedBox(height: AppSizes.sm,),
        
            //--Agree
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row( 
                  children: [
                  //--Remember Me
                    //Checkbox(value: true, onChanged: (value){}),
                    RichText(
                      softWrap: true,
                      maxLines: 2,
                      text: TextSpan(
                        children: [
                          TextSpan(text: '${TextsProvider.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: TextsProvider.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? AppColors.white : AppColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? AppColors.white : AppColors.primary,
                          )),
                          TextSpan(text: ' ${TextsProvider.and} ', style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: '${TextsProvider.termsOfUse}.', style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? AppColors.white : AppColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? AppColors.white : AppColors.primary,
                          )),
                        ]
                      )
                    ),
                  ],
                ),
              ],
            ),
        
            
        
            const SizedBox(height: AppSizes.spaceBtwInputFields,),
  
            //--Signup Btn
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.offAll(() => const VerifyEmailScreen()), child: const Text(TextsProvider.createAccount),),),
            //const SizedBox(height: AppSizes.spaceBtwSections,),
          ],
        ),
      ),
    );
  }
}

