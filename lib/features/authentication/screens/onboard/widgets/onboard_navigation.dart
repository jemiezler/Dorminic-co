import 'package:dorminic_co/features/authentication/controllers/onboard_controller.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/device/device_utility.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardDotNavigation extends StatelessWidget {
  const OnBoardDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 2,
        controller: controller.pageController,
        onDotClicked: (index) => controller.pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 500), // Adjust the duration as needed
          curve: Curves.ease, // Adjust the curve as needed
        ),
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? AppColors.light : AppColors.dark,
          dotHeight: 6,
          dotWidth: 6,
        ),
      ),
    );
  }
}