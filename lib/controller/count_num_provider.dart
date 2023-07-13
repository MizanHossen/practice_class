import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountNumberProvider extends ChangeNotifier {
  int number = 0;

  void increaseNum() {
    number++;
    notifyListeners();
  }

  void decreaseNum() {
    number--;
    notifyListeners();
  }
}
