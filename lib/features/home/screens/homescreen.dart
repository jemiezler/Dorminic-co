import 'package:dorminic_co/common/widgets/appbar.dart';
import 'package:dorminic_co/common/widgets/curve_edge_widget.dart';
import 'package:dorminic_co/common/widgets/search_container.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/constants/text_provider.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurveEdgeWidget(
              child: CustomAppBar(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      TextsProvider.homeAppbarTitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.white, fontSizeFactor: 1.2),
                    ),
                    Text(
                      TextsProvider.homeAppbarSubTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: Colors.white, fontSizeFactor: 1.2),
                    )
                  ],
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.profile_circle,
                        color: Colors.white,
                        size: 36,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            SearchContainer(darkMode: darkMode, text: 'Search', icon: Iconsax.search_normal_1,),
          ],
        ),
      ),
    );
  }
}
