import 'package:flutter/widgets.dart';

class StateObject extends ChangeNotifier {
  int _number = 0;

  // getter (gets the curret value of the variable _number)
  int get currentNumber => _number;

  // setter (sets the value of the variable _number)
  void increase() {
    _number++;
    notifyListeners();
  }

  void decrease() {
    if (_number > 0) {
      _number--;
    }
    notifyListeners();
  }

  String textData() => 'Current Number : $_number';
}
