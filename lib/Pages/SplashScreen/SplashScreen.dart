import 'package:flutter/material.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';
import 'package:provider_statemanagement/Helper/Resources/Styles.dart';
import 'package:provider_statemanagement/Pages/ReusableViews/GradientText/GradientText.dart';
import 'package:provider_statemanagement/Pages/SplashScreen/SplashScreenVM.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashScreenVM _splashScreenVM = SplashScreenVM();

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(milliseconds: 3000),
    ).then((value) => _splashScreenVM.checkIsFirstTimeUser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Stack(children: [_backgroundImage(context), _logo(context)]),
    );
  }

  Widget _backgroundImage(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white.withOpacity(0.8), Colors.transparent],
          stops: [0.75, 0.9],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: Image.asset(
        'lib/Helper/Resources/Images/Pattern.png',
        height: 330.h,
      ),
    );
  }

  Widget _logo(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/Helper/Resources/Images/Logo.png',
            width: 175.w,
            height: 139.h,
          ),

          SizedBox(),
          GradientText(
            'Food Ninja',
            style: Styles.appTitle,
            gradient: AppGradients.textPrimary,
          ),

          Text('Deliever Favorite Food', style: Styles.appSubTitle),
        ],
      ),
    );
  }
}
