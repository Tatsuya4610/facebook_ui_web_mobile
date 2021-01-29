import 'package:facebook_ui_web_mobile/config/palette.dart';
import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:facebook_ui_web_mobile/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'option.dart';

class OptionsList extends StatelessWidget {
  final User currentUser;
  OptionsList({this.currentUser});

  final List<List> _optionsList = [
    [FlutterIcons.account_multiple_mco, Colors.cyan, '友達'],
    [FlutterIcons.facebook_messenger_mco, Palette.facebookBlue, 'Messenger'],
    [FlutterIcons.flag_mco, Colors.orange, 'ページ'],
    [FlutterIcons.store_mco, Palette.facebookBlue, 'ストーリー'],
    [FlutterIcons.ondemand_video_mdi, Palette.facebookBlue, '観る'],
    [FlutterIcons.calendar_star_mco, Colors.redAccent, 'イベント'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: ListView.builder(
        itemCount: 1 + _optionsList.length, //一番上に自分を表示する為。
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: UserCard(
                user: currentUser,
              ),
            );
          }
          final List option = _optionsList[index - 1];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Option(
              iconData: option[0],
              color: option[1],
              label: option[2],
            ),
          );
        },
      ),
    );
  }
}
