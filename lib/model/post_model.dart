import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final AssetImage image;
  final int likes;
  final int comments;
  final int shares;


  const Post({
    @required this.user,
    @required this.caption,
    @required this.timeAgo,
    @required this.image,
    @required this.likes,
    @required this.comments,
    @required this.shares,
  });
}