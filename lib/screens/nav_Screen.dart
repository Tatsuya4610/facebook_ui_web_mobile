import 'package:facebook_ui_web_mobile/model/nav_manager.dart';
import 'package:facebook_ui_web_mobile/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_riverpod/all.dart';

import 'home_screen.dart';

final selectedIndexProvider = ChangeNotifierProvider((ref) => NavManager());

class NavScreen extends StatelessWidget {
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

  @override
  Widget build(
    BuildContext context,
  ) {
    return DefaultTabController(
      //現在選択されているタブのindexを知ることが出来る。
      length: _icons.length,
      child: Consumer(
        builder: (context, watch, child) {
          final navSelectedIndex = watch(selectedIndexProvider);
          return Scaffold(
            body: IndexedStack(
              //TabBarViewとほぼ機能は同じだが下へスクロールした状態が他のページに行っても維持される。
              index: navSelectedIndex.selectedIndex,
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
                selectedIndex: navSelectedIndex.selectedIndex,
                onTap: (index) => navSelectedIndex.setSelectedIndex(index),
              ),
            ),
          );
        },
      ),
    );
  }
}
