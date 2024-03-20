import 'package:flutter/material.dart';

import '../../../../../utils/constants/assetpath.dart';
import '../../../../../utils/constants/text_provider.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({
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
          height: 100,
          image: AssetImage(dark ? AssetsPath.darkAppLogo : AssetsPath.lightAppLogo),
        ),
        Text(TextsProvider.signupTitle ,style: Theme.of(context).textTheme.headlineMedium,),

      ],
    );
  }
}