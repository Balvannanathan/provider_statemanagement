import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';
import 'package:provider_statemanagement/Helper/Resources/Styles.dart';
import 'package:provider_statemanagement/Pages/HomeScreen/HomeScreenVM.dart';
import 'package:provider_statemanagement/Pages/ReusableViews/CustomProductList/CustomProductList.dart';
import 'package:provider_statemanagement/Pages/ReusableViews/CustomRestaurantList/CustomRestaurantList.dart';
import 'package:provider_statemanagement/Pages/ReusableViews/CustomViewMore/CustomViewMore.dart';
import 'package:provider_statemanagement/Pages/ReusableViews/GradientText/GradientText.dart';

import '../ReusableViews/CustomNavigationBar/CustomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeScreenVM>(
      create: (_) => HomeScreenVM(),
      builder: (context, child) {
        return Consumer<HomeScreenVM>(
          builder: (context, vm, child) {
            return GestureDetector(
              onTap: () => primaryFocus?.unfocus(),
              child: Scaffold(
                extendBody: true,
                bottomNavigationBar: CustomNavigationBar(
                  selectedIndex: vm.selectedIndex ?? 0,
                  navIcons: [
                    'navicon1.png',
                    'navicon2.png',
                    'navicon3.png',
                    'navicon4.png',
                  ],
                  selectedNavIcons: [
                    'navicon1.png',
                    'navicon2.png',
                    'navicon3.png',
                    'navicon4.png',
                  ],
                  updateSelectedIndex: (index) {
                    vm.updateSelectedIndex(index);
                  },
                  navText: ['Home', 'Profile', 'Order', 'Chat'],
                ),
                backgroundColor: AppColors.primaryWhite,
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      _headSection(context),

                      SizedBox(height: 10.h),

                      _searchAndFilter(context),

                      SizedBox(height: 20.h),

                      _specialOffer(context),

                      SizedBox(height: 25.h),

                      CustomViewMore(
                        text: 'Nearest Restaurant',
                        onClick: () {},
                      ),

                      SizedBox(height: 20.h),

                      CustomRestaurantList(restaurant: vm.restaurantList ?? []),

                      SizedBox(height: 20.h),

                      CustomViewMore(text: 'Popular Menu', onClick: () {}),

                      SizedBox(height: 20.h),

                      CustomProductList(productList: vm.productList ?? []),

                      SizedBox(height: 84.h),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _headSection(BuildContext context) {
    return Container(
      height: 160.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/Helper/Resources/Images/HomePattern.png'),
          fit: BoxFit.cover,
          alignment: AlignmentDirectional.topEnd,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 60.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 31.w),
            SizedBox(
              width: 233.w,
              child: Text('Find Your Favorite Food', style: Styles.homeTitle),
            ),

            Spacer(),

            Container(
              width: 45.w,
              height: 45.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.secondaryWhite,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryBlack.withOpacity(0.15),
                    offset: const Offset(10, 20),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
                child: Image.asset(
                  'lib/Helper/Resources/Images/IconNotifiactionWithDot.png',
                ),
              ),
            ),

            SizedBox(width: 39.w),
          ],
        ),
      ),
    );
  }

  Widget _searchAndFilter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        children: [
          TextField(
            controller: searchController,
            cursorHeight: 15.h,
            cursorColor: AppColors.searchBarText,
            style: TextStyle(
              fontSize: 12,
              color: AppColors.searchBarText,
              letterSpacing: 0.5.w,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide.none,
              ),
              constraints: BoxConstraints(maxHeight: 50.h, maxWidth: 270.w),
              contentPadding: EdgeInsets.symmetric(vertical: 15.h),

              fillColor: AppColors.searchBarBackground.withOpacity(0.1),
              hintText: 'What do you want to order?',
              hintStyle: TextStyle(
                fontSize: 12,
                color: AppColors.searchBarText.withOpacity(0.4),
                letterSpacing: 0.5.w,
              ),
              filled: true,
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  top: 13.w,
                  right: 10.w,
                  bottom: 13.h,
                  left: 15.h,
                ),
                child: Image.asset(
                  'lib/Helper/Resources/Images/search.png',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ),

          Spacer(),

          Container(
            height: 50.w,
            width: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: AppColors.searchBarBackground.withOpacity(0.1),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.h),
              child: Image.asset('lib/Helper/Resources/Images/Filter.png'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _specialOffer(BuildContext context) {
    return Container(
      width: 325.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        gradient: AppGradients.primaryButton,
        image: DecorationImage(
          image: AssetImage('lib/Helper/Resources/Images/OfferPattern.png'),
          fit: BoxFit.contain,
          opacity: 0.2,
        ),
      ),
      child: Row(
        children: [
          Image.asset('lib/Helper/Resources/Images/OfferIce.png'),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 142.w,
                  child: Text(
                    'Special Deal For Octobal',
                    style: Styles.customButtonText.copyWith(fontSize: 17.sp),
                  ),
                ),

                SizedBox(height: 14.h),

                Container(
                  width: 82.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: AppColors.primaryWhite,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryBlack.withOpacity(0.15),
                        offset: Offset(5, 10),
                        blurRadius: 30,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: GradientText(
                      'Buy Now',
                      gradient: AppGradients.textPrimary,
                      style: Styles.customButtonText.copyWith(fontSize: 10.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
