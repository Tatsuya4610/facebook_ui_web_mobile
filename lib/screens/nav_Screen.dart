import 'package:facebook_ui_web_mobile/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'home_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = const [
    Icons.home,
    Icons.ondemand_video,
    FlutterIcons.account_circle_mco,
    FlutterIcons.account_group_outline_mco,
    FlutterIcons.bell_outline_mco,
    Icons.menu,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //現在選択されているタブのindexを知ることが出来る。
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack( //TabBarViewとほぼ機能は同じだが下へスクロールした状態が他のページに行っても維持される。
          index: _selectedIndex,
          children: _screens,
        ),
        // body: TabBarView( //TabBarViewの場合、下へスクロールして他のページに行き戻って来ると、一番上に画面が戻ってしまう。
        //   physics: NeverScrollableScrollPhysics(), //手動でスクロール不可。下ボタンのみ可。
        //   children: _screens,
        // ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: CustomTabBar(
              icons: _icons,
              selectedIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              }),
        ),
      ),
    );
  }
}
