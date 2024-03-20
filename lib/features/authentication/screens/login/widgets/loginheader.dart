import 'package:flutter/material.dart';

import '../../../../../utils/constants/assetpath.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_provider.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}