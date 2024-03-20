import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/constants/text_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OauthTexts extends StatelessWidget {
  const OauthTexts({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? AppColors.darkGrey : AppColors.grey, thickness: 0.5 ,indent: 60, endIndent: 5,)),
        Text(TextsProvider.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? AppColors.darkGrey : AppColors.grey, thickness: 0.5 ,indent: 5, endIndent: 60,)),
        
      ],
    );
  }
}