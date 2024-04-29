import 'dart:convert';

import 'package:dorminic_co/common/widgets/navbar.dart';
import 'package:dorminic_co/features/authentication/screens/password_management/resetpasswordScreen.dart';
import 'package:dorminic_co/features/authentication/screens/signup/signup.dart';
import 'package:dorminic_co/features/home/screens/homescreen.dart';
import 'package:dorminic_co/utils/helpers/passwordvisibilitytoggle.dart';
import 'package:dorminic_co/utils/http/http_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:http/http.dart' as http;

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_provider.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
    _SignupFormState createState() => _SignupFormState();
  }

  class _SignupFormState extends State<LoginForm> {
  final APIClient apiClient = APIClient();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

Future<void> _login() async {
  String username = usernameController.text.trim();
  String password = passwordController.text.trim();

  try {
    var response = await apiClient.loginUser(username, password);

    if (response.statusCode == 200) {
      var responseData = jsonDecode(response.body);
      // Handle successful login response
      print('Token: ${responseData['token']}');
      print('Refresh Token: ${responseData['refreshToken']}');
      print('User Data: ${responseData['userData']}');
      Get.offAll(() => NavBar()); // Assuming NavBar is your home screen
    } else {
      // Handle error response
      print('HTTP Error: ${response.statusCode}');
      print('Error Body: ${response.body}');
      // Show error message to the user
      Get.snackbar('Error', 'Invalid username or password');
    }
  } catch (e) {
    // Handle network or other exceptions
    print('Exception: $e');
    Get.snackbar('Error', 'An error occurred. Please try again later.');
  }
}

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            //--Email
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TextsProvider.email,
                //labelStyle: TextStyle(fontSize: 16)
              ),
            ),
        
            const SizedBox(height: AppSizes.spaceBtwInputFields,),
        
            //--password
            TextFormField(
              controller: passwordController,
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
                TextButton(onPressed: ()=>Get.to(() => const ResetPasswordScreen()), child: const Text(TextsProvider.forgetPassword,)),
              ],
            ),
        
            
        
            const SizedBox(height: AppSizes.spaceBtwSections,),
    
            //--Signin Btn
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: _login, child: const Text(TextsProvider.signIn),),),
            const SizedBox(height: AppSizes.spaceBtwItems,),
    
            //--Signup Btn
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(() => const SignupScreen()), child: const Text(TextsProvider.createAccount),),),
            //const SizedBox(height: AppSizes.spaceBtwSections,),
          ],
        ),
      ),
    );
  }
}

