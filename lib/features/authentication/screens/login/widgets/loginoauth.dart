import 'package:dorminic_co/utils/constants/assetpath.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginOauths extends StatelessWidget {
  const LoginOauths({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: AppColors.grey), borderRadius: BorderRadius.circular(100), color: Colors.black),
          child: IconButton(
            onPressed: (){},
            icon: Stack(
              children:[
                SizedBox(
                  width: AppSizes.iconMd,
                  height: AppSizes.iconMd,
                  child: AssetsPath.apple,
                ),
              ] 
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: AppColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: Stack(
              children:[
                SizedBox(
                  width: AppSizes.iconMd,
                  height: AppSizes.iconMd,
                  child: AssetsPath.google
                ),
              ] 
            ),
          ),
        ),
        
      ],
    );
  }
}

