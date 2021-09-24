import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  var _count = 0;
  void incrementCounter() {
    _count++;
    notifyListeners();
  }

  int get getCounter {
    return _count;
  }
}
