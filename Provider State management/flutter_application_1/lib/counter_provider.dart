import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0; //we need to make a function to use this data

  ///getValue
  int getCount() => _count; //here we are only exposing the value of the count variable and not giving the direct access to the count variable

  ///events
  // event means we are creating an function here

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  void decrementCounter() {
    if (_count > 0) {
      _count--;
      notifyListeners();
    }
  }
}
