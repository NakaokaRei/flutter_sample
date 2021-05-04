import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int _counter = 0;
  List<int> _numbers = [0];
  int get counter => _counter;
  List get numbers => _numbers;

  void incrementCounter() {
    this._counter++;
    this._numbers.insert(0, this._counter);
    notifyListeners();
  }
}
