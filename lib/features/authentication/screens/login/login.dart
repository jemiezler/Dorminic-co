import 'package:dorminic_co/common/styles/spacing_styles.dart';
import 'package:dorminic_co/features/authentication/screens/login/widgets/loginform.dart';
import 'package:dorminic_co/features/authentication/screens/login/widgets/loginheader.dart';
import 'package:dorminic_co/features/authentication/screens/login/widgets/loginoauth.dart';
import 'package:dorminic_co/features/authentication/screens/login/widgets/oauthtext.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title, and Subtitle Go heres,
              LoginHeader(dark: dark),

              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}



