import 'package:flutter/material.dart';

class CounterScreenModel extends ChangeNotifier {
  int count = 0;

  void setCount(int value) {
    count = value;
    notifyListeners();
  }
}