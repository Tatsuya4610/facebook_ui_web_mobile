

import 'package:flutter/cupertino.dart';

class NavManager extends ChangeNotifier {

  int _selectedIndex = 0;

  int get selectedIndex {
    return _selectedIndex;
  }

  void setSelectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }


}