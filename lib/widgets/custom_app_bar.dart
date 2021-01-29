import 'package:facebook_ui_web_mobile/config/palette.dart';
import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:facebook_ui_web_mobile/widgets/circle_button.dart';
import 'package:facebook_ui_web_mobile/widgets/custom_tab_bar.dart';
import 'package:facebook_ui_web_mobile/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;
  final int navSelectedIndex;
  final Function(int) onTap;

  const CustomAppBar({
    @required this.currentUser,
    @required this.icons,
    @required this.navSelectedIndex,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          //下側の影。
          color: Colors.black12,
          offset: Offset(0, 2),
          blurRadius: 4.0,
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              'facebook',
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2, //幅縮小。
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: 600.0,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: navSelectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                UserCard(user: currentUser),
                SizedBox(
                  width: 12.0,
                ),
                CircleButton(
                  iconData: Icons.search,
                  iconSize: 30.0,
                  onPressed: () {},
                ),
                CircleButton(
                  iconData: FlutterIcons.facebook_messenger_mco,
                  iconSize: 30.0,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
