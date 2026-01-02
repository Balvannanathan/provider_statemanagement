import 'package:flutter/material.dart';
import 'package:provider_statemanagement/Helper/AppConstants/AppConstants.dart';
import 'package:provider_statemanagement/Helper/Navigations/NavigationConfig.dart';
import 'package:provider_statemanagement/Helper/Navigations/NavigationHelper.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ResponsiveUI(
      context,
      figmaHeight: Appconstants.baseHeight,
      figmaWidth: Appconstants.baseWidth,
    );
    return MaterialApp(
      title: 'Food Ninja',
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationHelper.navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (_) => NavigationConfig.splash.builder(null),
      ),
    );
  }
}
