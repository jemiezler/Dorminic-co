import 'package:carousel_slider/carousel_slider.dart';
import 'package:dorminic_co/common/widgets/custom_shapes/circular_container.dart';
import 'package:dorminic_co/common/widgets/rounded_image.dart';
import 'package:dorminic_co/features/home/controllers/homecontroller.dart';
import 'package:dorminic_co/utils/constants/assetpath.dart';
import 'package:dorminic_co/utils/constants/colors.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                viewportFraction: 0.8,
                initialPage: -1,
                enableInfiniteScroll: false,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index),
              ),
              items: const [
                RoundedImage(
                  imageUrl: AssetsPath.productImage1,
                  padding: EdgeInsets.only(right: 10),
                ),
                RoundedImage(
                  imageUrl: AssetsPath.productImage2,
                  padding: EdgeInsets.only(right: 10),
                ),
                RoundedImage(
                  imageUrl: AssetsPath.productImage3,
                  padding: EdgeInsets.only(right: 10),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            children: [
              for (int i = 0; i < 3; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor:
                      controller.carouselSliderCurrentIndex.value == i
                          ? AppColors.darkGrey
                          : AppColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
