

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


  //スクロール追跡。 モバイルとデスクトップ画面のスクロール状態を共有する。
  TrackingScrollController _trackingScrollController = TrackingScrollController();

  TrackingScrollController get trackingScrollController => _trackingScrollController;

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

}