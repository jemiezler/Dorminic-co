import 'package:dorminic_co/features/authentication/controllers/onboard_controller.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardController.instance.skipPage(), child: const Text('Skip'),
      ),
    );
  }
}