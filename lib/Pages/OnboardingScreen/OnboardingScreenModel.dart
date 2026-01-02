import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider_statemanagement/Helper/Navigations/NavigationMixin.dart';
import 'package:provider_statemanagement/Service/PlatformLocalStorageService/IPlatformLocalStorageService.dart';

class OnboardingScreenModel extends ChangeNotifier with NavigationMixin {
  final IPlatformLocalStorageService platformLocalStorageService = GetIt
      .instance
      .get<IPlatformLocalStorageService>();
  int? carouselIndex;

  void setCarouselIndex(int value) {
    carouselIndex = value;
    notifyListeners();
  }

  List<Map<String, String>>? carouselData;

  void setCarouselData(List<Map<String, String>> data) {
    carouselData = data;
    notifyListeners();
  }
}
