import 'package:dorminic_co/features/home/screens/chatscreen.dart';
import 'package:dorminic_co/features/home/screens/homescreen.dart';
import 'package:dorminic_co/features/home/screens/menuscreen.dart';
import 'package:dorminic_co/features/home/screens/settingscreen.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/device/device_utility.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer(
      {super.key,
      required this.darkMode,
      required this.text,
      this.icon,
      this.showBackground = true,
      this.showBorder = true});

  final bool darkMode;
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
            color: darkMode ? AppColors.dark : AppColors.grey,
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
            border: Border.all(
                color: darkMode ? Colors.transparent : Colors.transparent)),
        child: Row(
          children: [
            Icon(
              icon,
              color: darkMode ? AppColors.grey : AppColors.darkGrey,
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: darkMode ? AppColors.grey : AppColors.darkGrey,
                  fontSizeFactor: 1.2),
            )
          ],
        ),
      ),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const HomeScreen(), const MenuScreen(), const ChatScreen(), const SettingScreen()];
}
