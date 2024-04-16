import 'package:dorminic_co/common/widgets/appbar.dart';
import 'package:dorminic_co/common/widgets/curve_edge_widget.dart';
import 'package:dorminic_co/common/widgets/curve_edge_widgetsetting.dart';
import 'package:dorminic_co/common/widgets/custom_shapes/circular_container.dart';
import 'package:dorminic_co/common/widgets/section_heading.dart';
import 'package:dorminic_co/common/widgets/settings_menu_tile.dart';
import 'package:dorminic_co/common/widgets/user_profile_tile.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --Header
            CurveEdgeWidgetsetting(
              child: Column(
                children: [
                  /// Appbar
                  CustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.white),
                    ),
                  ),

                  /// User Profile Card
                  const UserProfileTile(),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Setting
                  SectionHeading(title: 'Account Setting' , showActionButton: false),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  SettingsMenuTile(icon: Iconsax.house, title: 'Account', subTitle: 'Set your account'),
                  SettingsMenuTile(icon: Iconsax.notification, title: 'Notification', subTitle: 'Set any kind of notification message'),
                  SettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),

                  SizedBox(height: AppSizes.spaceBtwSections),
                  
                  SectionHeading(title: 'App Setting' , showActionButton: false),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  SettingsMenuTile(icon: Iconsax.setting, title: 'Setting', subTitle: 'Set the suitability for use'),
                  SettingsMenuTile(icon: Iconsax.logout, title: 'Sign out', subTitle: 'Your information will be saved for quick sign-in'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
