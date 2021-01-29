import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({this.mobile, this.tablet, this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //デバイスの大きさによってBuilder変更。
      if (constraints.maxWidth >= 1200) {
        return desktop;
      } else if (constraints.maxWidth >= 800) {
        return tablet ?? mobile; //機種によって大きさが変わる為。
      } else {
        return mobile;
      }
    });
  }
}
