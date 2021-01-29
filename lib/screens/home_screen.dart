
import 'package:facebook_ui_web_mobile/model/nav_manager.dart';
import 'package:facebook_ui_web_mobile/screens/home_screen_desktop.dart';
import 'package:facebook_ui_web_mobile/screens/home_screen_mobile.dart';
import 'package:facebook_ui_web_mobile/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

final selectedIndexProvider = ChangeNotifierProvider((ref) => NavManager());

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Consumer(builder: (context,watch,child) {
          final _scrollController = watch(selectedIndexProvider).trackingScrollController;
          return Responsive(
            mobile: HomeScreenMobile(scrollController: _scrollController,),
            desktop: HomeScreenDesktop(scrollController: _scrollController,),
          );
        },)
      ),
    );
  }
}
