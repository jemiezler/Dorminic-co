import 'package:dorminic_co/features/authentication/screens/onboard/onboard_screen.dart';
import 'package:dorminic_co/utils/http/http_client.dart';
import 'package:dorminic_co/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    APIClient apiClient = APIClient();
    return GetMaterialApp(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: 1), // Use textScaleFactor instead of textScaler
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: OnboardScreen(apiClient: apiClient),
    );
  }
}
