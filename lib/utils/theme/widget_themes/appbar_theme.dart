import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class CustomAppBarTheme{
  CustomAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.black, size: AppSizes.iconMd),
    actionsIconTheme: IconThemeData(color: AppColors.black, size: AppSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.black, size: AppSizes.iconMd),
    actionsIconTheme: IconThemeData(color: AppColors.white, size: AppSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.white),
  );
}