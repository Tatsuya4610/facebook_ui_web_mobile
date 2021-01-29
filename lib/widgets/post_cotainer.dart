import 'package:facebook_ui_web_mobile/model/post_model.dart';
import 'package:facebook_ui_web_mobile/widgets/post_heder.dart';
import 'package:facebook_ui_web_mobile/widgets/post_stats.dart';
import 'package:facebook_ui_web_mobile/widgets/responsive.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({this.post});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(
          vertical: 5.0, horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )
          : null,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  PostHeader(post: post),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(post.caption),
                  post.image != null
                      ? SizedBox.shrink() //表示しない。空。
                      : SizedBox(
                          height: 6.0,
                        ),
                ],
              ),
            ),
            post.image != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image(image: post.image),
                  )
                : SizedBox.shrink(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: PostStats(post: post),
            )
          ],
        ),
      ),
    );
  }
}
