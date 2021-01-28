import 'package:facebook_ui_web_mobile/config/palette.dart';
import 'package:facebook_ui_web_mobile/model/post_model.dart';
import 'package:facebook_ui_web_mobile/widgets/post_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PostStats extends StatelessWidget {
  final Post post;
  const PostStats({this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Palette.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                size: 10.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Expanded(
              child: Text(
                '${post.likes}',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            Text(
              '${post.comments} コメント',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              '${post.shares}シェア',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          children: <Widget>[
            PostButton(
              icon: Icon(
                FlutterIcons.thumb_up_mco,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'いいね',
              onTap: () {},
            ),
            PostButton(
              icon: Icon(
                FlutterIcons.comment_mco,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'コメント',
              onTap: () {},
            ),
            PostButton(
              icon: Icon(
                FlutterIcons.share_mco,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'シェア',
              onTap: () {},
            )
          ],
        )
      ],
    );
  }
}
