import 'package:dorminic_co/features/authentication/controllers/onboard_controller.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/device/device_utility.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnboardNextButton extends StatelessWidget {
  const OnboardNextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      child: GestureDetector(
        onTap: () => OnBoardController.instance.nextPage(),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dark ? AppColors.primary : Colors.black,
          ),
          padding: const EdgeInsets.all(16),
          child: const Icon(Icons.navigate_next_rounded, color: Colors.white),
        ),
      ),
    );
  }
}