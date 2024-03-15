import 'package:dorminic_co/common/styles/spacing_styles.dart';
import 'package:dorminic_co/utils/constants/assetpath.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/constants/text_provider.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title, and Subtitle Go heres,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? AssetsPath.darkAppLogo : AssetsPath.lightAppLogo),
                  ),
                  Text(TextsProvider.loginTitle ,style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: AppSizes.sm),
                  Text(TextsProvider.loginSubTitle ,style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
                  const SizedBox(height: AppSizes.lg),
                ],
              ),

              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      //--Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TextsProvider.email
                        ),
                      ),
                  
                      const SizedBox(height: AppSizes.spaceBtwInputFields,),
                  
                      //--password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TextsProvider.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                  
                      const SizedBox(height: AppSizes.sm * 0.5,),
                  
                      //--Remeber me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row( 
                            children: [
                            //--Remember Me
                              Checkbox(value: true, onChanged: (value){}),
                              const Text(TextsProvider.rememberMe),
                            ],
                          ),

                        //--Forget Password
                          TextButton(onPressed: (){}, child: const Text(TextsProvider.forgetPassword,)),
                        ],
                      ),
                  
                      
                  
                      const SizedBox(height: AppSizes.spaceBtwSections,),

                      //--Signin Btn
                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(TextsProvider.signIn),),),
                      
                      const SizedBox(height: AppSizes.spaceBtwItems,),

                      //--Signup Btn
                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(TextsProvider.createAccount),),),
                      
                      const SizedBox(height: AppSizes.spaceBtwSections,),
                    ],
                  ),
                ),
              ),

              //--Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: dark ? AppColors.darkGrey : AppColors.grey, thickness: 0.5 ,indent: 60, endIndent: 5,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}