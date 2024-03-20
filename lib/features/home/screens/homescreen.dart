import 'dart:ffi';

import 'package:dorminic_co/features/authentication/screens/login/login.dart';
import 'package:dorminic_co/features/authentication/screens/onboard/onboard_screen.dart';
import 'package:dorminic_co/features/authentication/screens/password_management/resetpasswordlinkScreen.dart';
import 'package:dorminic_co/features/authentication/screens/signup/signup.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = AppHelperFunctions.isDarkMode(context);
    
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 75,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? AppColors.black : AppColors.white,
          indicatorColor: darkMode ? AppColors.white.withOpacity(0.1) : AppColors.black.withOpacity(0.1),

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.menu), label: 'Menu'),
            NavigationDestination(icon: Icon(Iconsax.message), label: 'Chat'),
            NavigationDestination(icon: Icon(Iconsax.profile), label: 'Profile'),
          ],
        )
      ),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const LoginScreen(), const SignupScreen(), const OnboardScreen(), const ResetPasswordLinkScreen()];
}