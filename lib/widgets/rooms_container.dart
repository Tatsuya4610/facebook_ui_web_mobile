import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:facebook_ui_web_mobile/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

import 'create_room_button.dart';

class RoomsContainer extends StatelessWidget {
  final List<User> onlineUsers;

  RoomsContainer({this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, //横スライド。
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4.0),
        itemCount: 1 + onlineUsers.length, //最初は自分用の追加UIの為。
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: CreateRoomButton(),
            );
          }
          final User user = onlineUsers[index - 1];
          return Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: ProfileAvatar(image: user.image,isActive: true,),);
        },
      ),
    );
  }
}
