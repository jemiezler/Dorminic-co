import 'package:dorminic_co/common/widgets/appbar.dart';
import 'package:dorminic_co/common/widgets/curve_edge_widget.dart';
import 'package:dorminic_co/common/widgets/search_container.dart';
import 'package:dorminic_co/features/home/screens/widgets/home_slider.dart';
import 'package:dorminic_co/utils/constants/sizes.dart';
import 'package:dorminic_co/utils/constants/text_provider.dart';
import 'package:dorminic_co/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  int _likeCount = 0;
  String _commentText = '';

  void _incrementLikeCount() {
    setState(() {
      _likeCount++;
    });
  }

  void _setCommentText(String comment) {
    setState(() {
      _commentText = comment;
    });
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
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
                              .headlineSmall!
                              .copyWith(color: Colors.white, fontSize: 20.sp),
                        ),
                        Text(
                          TextsProvider.homeAppbarSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(color: Colors.white, fontSize: 16.sp),
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
                SizedBox(
                  height: AppSizes.spaceBtwSections.h,
                ),
                SearchContainer(
                  darkMode: darkMode,
                  text: 'Search',
                  icon: Iconsax.search_normal_1,
                ),
                SizedBox(
                  height: AppSizes.spaceBtwSections.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
                  child: HomeSlider(),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Posts',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(AppSizes.defaultSpace.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Image.network(
                                        'https://picsum.photos/id/$index/500/300',
                                        width: double.infinity,
                                        height: 200.h,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: AppSizes.spaceBtwSections.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                            onPressed: _incrementLikeCount,
                                            icon: Icon(
                                              Iconsax.heart,
                                              color: Colors.red,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Text(
                                            '$_likeCount likes',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(fontSize: 14.sp),
                                          ),
                                        ],
                                      ),
                                      Padding(padding: EdgeInsets.all(10)),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Add a comment...',
                                            hintStyle: TextStyle(
                                              fontSize: 10,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                          onChanged: _setCommentText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Iconsax.send1,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppSizes.spaceBtwSections.h,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}