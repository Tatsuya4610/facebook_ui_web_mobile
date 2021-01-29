import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:facebook_ui_web_mobile/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ProfileAvatar(
            image: user.image,
          ),
          SizedBox(width: 6.0),
          Flexible(
            child: Text(
              user.name,
              style: TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis, //省略記号
            ),
          ),
        ],
      ),
    );
  }
}
