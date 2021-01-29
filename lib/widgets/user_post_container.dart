import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:facebook_ui_web_mobile/widgets/profile_avatar.dart';
import 'package:facebook_ui_web_mobile/widgets/responsive.dart';
import 'package:flutter/material.dart';

class UserPostContainer extends StatelessWidget {
  final User currentUser;

  const UserPostContainer({
    this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) : null,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ProfileAvatar(image: currentUser.image,),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      //collapsedで枠やBarを削除。
                      hintText: '今どうしてる？',
                    ),
                  ),
                )
              ],
            ),
            Divider(
              height: 10.0,
              thickness: 0.5,
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text('Live'),
                  ),
                  VerticalDivider(width: 8.0,),
                  FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text('Photo'),
                  ),
                  VerticalDivider(width: 8.0,),
                  FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: Text('Room'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
