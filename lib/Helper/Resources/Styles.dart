import 'package:flutter/material.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';

class AppColors {
  static const Color primaryWhite = Color(0xffFFFFFF);
  static const Color secondaryWhite = Color(0xffFAFDFF);
  static const Color primaryBlack = Color(0xff000000);
  static const Color secondaryBlack = Color(0xff09051C);
  static const Color primaryLightGreen = Color(0xff53E88B);
  static const Color primaryDarkGreen = Color(0xff15BE77);
  static const Color lightGrey = Color(0xff3B3B3B);
  static const Color priceYellow = Color(0xffFEAD1D);
  static const Color dropShadow = Color(0xff5A6CEA);

  static const Color searchBarText = Color(0xffDA6317);
  static const Color searchBarBackground = Color(0xffF9A84D);
  static const Color viewMoreText = Color(0xffFF7C32);
}

class AppGradients {
  static const LinearGradient textPrimary = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [AppColors.primaryLightGreen, AppColors.primaryDarkGreen],
  );

  static const LinearGradient navIcon = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [AppColors.primaryDarkGreen, AppColors.primaryLightGreen],
    stops: [0.0, 1.0],
  );

  static const LinearGradient primaryButton = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.primaryLightGreen, AppColors.primaryDarkGreen],
  );
}

class Styles {
  /// Base builder
  static TextStyle _base({
    required String fontFamily,
    required double fontSize,
    FontWeight? fontWeight,
    double? height,
    required Color color,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      height: height,
      color: color,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle get appTitle => _base(
    fontFamily: "VigaRegular",
    fontSize: 40,
    height: 1,
    color: AppColors.primaryWhite,
  ).apply();

  static TextStyle get appSubTitle => _base(
    fontFamily: "InterSemiBold",
    fontSize: 13,
    color: AppColors.secondaryBlack,
  );

  static TextStyle get carouselContent => _base(
    fontFamily: "BentonSansBold",
    fontSize: 22,
    color: AppColors.secondaryBlack,
  );

  static TextStyle get carouselDescription => _base(
    fontFamily: "BentonSansBook",
    fontSize: 12,
    color: AppColors.primaryBlack,
  );

  static TextStyle get customButtonText => _base(
    fontFamily: "BentonSansBold",
    fontSize: 16,
    color: AppColors.primaryWhite,
  );

  static TextStyle get subSectionTitle => _base(
    fontFamily: "BentonSansBold",
    fontSize: 15,
    color: AppColors.secondaryBlack,
  );

  static TextStyle get productStore => _base(
    fontFamily: "BentonSansRegular",
    fontSize: 14,
    color: AppColors.lightGrey.withOpacity(0.3),
  );

  static TextStyle get homeTitle => _base(
    fontFamily: "BentonSansBold",
    fontSize: 31,
    color: AppColors.secondaryBlack,
  );

  static TextStyle get arriveTime => _base(
    fontFamily: "BentonSansBook",
    fontSize: 13,
    color: AppColors.primaryBlack.withOpacity(0.5),
  );

  static TextStyle get navText => _base(
    fontFamily: "BentonSansMedium",
    fontSize: 12,
    color: AppColors.secondaryBlack,
  );
}
