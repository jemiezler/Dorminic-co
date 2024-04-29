import 'package:dorminic_co/features/authentication/controllers/onboard_controller.dart';
import 'package:dorminic_co/features/authentication/screens/onboard/widgets/onboard_navigation.dart';
import 'package:dorminic_co/features/authentication/screens/onboard/widgets/onboard_next.dart';
import 'package:dorminic_co/features/authentication/screens/onboard/widgets/onboard_page.dart';
import 'package:dorminic_co/utils/constants/assetpath.dart';
import 'package:dorminic_co/utils/constants/text_provider.dart';
import 'package:dorminic_co/utils/http/http_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key, required APIClient apiClient});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardController());
    return Scaffold(
      body: Stack(
        children: [
          // Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardPage(
                image: AssetsPath.onBoardingImage1,
                title: TextsProvider.onBoardingTitle1,
                subTitle: TextsProvider.onBoardingSubTitle1,
              ),
              OnBoardPage(
                image: AssetsPath.onBoardingImage2,
                title: TextsProvider.onBoardingTitle2,
                subTitle: TextsProvider.onBoardingSubTitle2,
              ),
            ],
          ),

          // Skip Button (Uncomment if you have this widget)
          // const OnBoardSkip(),

          // Dot Indicator
          const OnBoardDotNavigation(),

          // Next Button
          const OnboardNextButton(),
        ],
      ),
    );
  }
}