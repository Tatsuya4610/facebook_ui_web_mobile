import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:flutter/cupertino.dart';


class Story {
  final User user;
  final AssetImage image;
  final bool isViewed;

  const Story({
    @required this.user,
    @required this.image,
    this.isViewed = false,
  });
}

