import 'package:dorminic_co/features/home/screens/chatscreen.dart';
import 'package:dorminic_co/features/home/screens/homescreen.dart';
import 'package:dorminic_co/features/home/screens/menuscreen.dart';
import 'package:dorminic_co/features/home/screens/settingscreen.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          color: dark ? AppColors.black : AppColors.light,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: GNav(
              selectedIndex: controller.selectedIndex.value,
              onTabChange: (index) => controller.selectedIndex.value = index,
              gap: 8,
              activeColor: dark ? AppColors.light : AppColors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              color: dark ? AppColors.light : AppColors.black,
              tabs: const [
                GButton(
                  icon: Iconsax.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Iconsax.menu,
                  text: 'Menu',
                ),
                GButton(
                  icon: Iconsax.message,
                  text: 'Chat',
                ),
                GButton(
                  icon: Iconsax.user,
                  text: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const MenuScreen(),
    ChatScreen(),
    const SettingScreen()
  ];
}
