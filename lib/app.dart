import 'package:dorminic_co/features/authentication/screens/login/login.dart';
import 'package:dorminic_co/features/authentication/screens/onboard/onboard_screen.dart';
import 'package:dorminic_co/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnboardScreen() ,
    
    );
  }
}