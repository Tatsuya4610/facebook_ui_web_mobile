import 'package:facebook_ui_web_mobile/model/post_model.dart';
import 'package:facebook_ui_web_mobile/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final Post post;

  const PostHeader({this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          image: post.user.image,
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                post.user.name,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Row(
                children: <Widget>[
                  Text(
                    '${post.timeAgo} ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12.0,
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {},
        )
      ],
    );
  }
}
