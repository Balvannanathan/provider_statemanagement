import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';
import 'package:provider_statemanagement/Helper/Resources/Styles.dart';
import 'package:provider_statemanagement/Pages/OnboardingScreen/OnboardingScreenVM.dart';
import 'package:provider_statemanagement/Pages/ReusableViews/CustomButton/CustomButton.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final CarouselSliderController controller = CarouselSliderController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingScreenVM(),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: AppColors.primaryWhite,
          body: Consumer<OnboardingScreenVM>(
            builder: (context, vm, _) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 56.83.h),

                  CarouselSlider.builder(
                    itemCount: vm.carouselData?.length ?? 0,
                    itemBuilder: (context, index, realIndex) {
                      return _carouselSlider(context, index, vm);
                    },

                    carouselController: controller,
                    options: CarouselOptions(
                      height: 555.h,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      padEnds: false,
                      onPageChanged: (index, reason) {
                        vm.updateCarouselIndex(index);
                      },
                    ),
                  ),

                  SizedBox(height: 60.h),

                  CustomButton(
                    onPressed: () {
                      vm.updateCarouselIndex((vm.carouselIndex ?? 0) + 1);

                      controller.animateToPage(
                        (vm.carouselIndex ?? 0),
                        duration: Duration(milliseconds: 400),
                        // curve: Curves.easeInOut,
                      );
                    },
                    buttonText: 'Next',
                    width: 157.w,
                    height: 57.h,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _carouselSlider(
    BuildContext context,
    int index,
    OnboardingScreenVM vm,
  ) {
    return Column(
      children: [
        AnimatedScale(
          scale: index == vm.carouselIndex ? 1.0 : 0.5,
          duration: const Duration(milliseconds: 300),
          child: Image.asset(
            'lib/Helper/Resources/Images/${vm.carouselData?[index]["image"] ?? ''}.png',
            width: 408.w,
            height: 434.22.h,
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: index == 0 ? 66.w : 13.w),
          child: Text(
            vm.carouselData?[index]["content"] ?? '',
            textAlign: TextAlign.center,
            style: Styles.carouselContent,
          ),
        ),

        SizedBox(height: 20.h),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 66.w),
          child: Text(
            vm.carouselData?[index]["description"] ?? '',
            textAlign: TextAlign.center,
            style: Styles.carouselDescription,
          ),
        ),
      ],
    );
  }
}
