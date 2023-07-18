import 'package:flutter/foundation.dart';

class sliderProvider with ChangeNotifier {
  double _value = 1;
  double get value => _value;
  void onslide(double val) {
    _value = val;
    notifyListeners();
  }
}
