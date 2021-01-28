import 'package:facebook_ui_web_mobile/config/palette.dart';
import 'package:facebook_ui_web_mobile/screens/home_screen.dart';
import 'package:facebook_ui_web_mobile/screens/nav_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Flutter for WebはBetaバージョンで使用する必要があります。
//ターミナルよりflutter channelでチャンネルを確認し、 flutter channel betaで
// ベータチャネルに切替えしflutter upgradeで完了

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FacebookUI Web & Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold
      ),
      home: NavScreen(),
    );
  }
}
