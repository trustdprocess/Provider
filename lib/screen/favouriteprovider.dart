import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class favouriteList with ChangeNotifier {
  List<int> _favouriteList = [];
  List<int> get favouriteLista => _favouriteList;
  void onPressed(int index) {
    if (_favouriteList.contains(index)) {
      _favouriteList.remove(index);
    } else {
      _favouriteList.add(index);
    }
    notifyListeners();
  }
}
