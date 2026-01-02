import 'package:flutter/material.dart';
import 'package:provider_statemanagement/BOs/ProductBO/ProductBO.dart';
import 'package:provider_statemanagement/BOs/RestaurantBO/RestaurantBO.dart';

class HomeScreenModel extends ChangeNotifier {
  int? selectedIndex;

  void setSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<RestaurantBO>? restaurantList;

  void setRestaurantList(List<RestaurantBO> list) {
    restaurantList = list;
    notifyListeners();
  }

  List<ProductBO>? productList;

  void setProductList(List<ProductBO> list) {
    productList = list;
    notifyListeners();
  }
}
