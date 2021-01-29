import 'package:flutter/material.dart';
import 'package:facebook_ui_web_mobile/config/palette.dart';
import 'package:facebook_ui_web_mobile/data/demo_data.dart';
import 'package:facebook_ui_web_mobile/model/post_model.dart';
import 'package:facebook_ui_web_mobile/widgets/circle_button.dart';
import 'package:facebook_ui_web_mobile/widgets/post_cotainer.dart';
import 'package:facebook_ui_web_mobile/widgets/rooms_container.dart';
import 'package:facebook_ui_web_mobile/widgets/stories_container.dart';
import 'package:facebook_ui_web_mobile/widgets/user_post_container.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreenMobile extends StatelessWidget {
  final TrackingScrollController scrollController;
  //モバイルとデスクトップの画面移行時にスクロール状態を引き継ぐ。

  const HomeScreenMobile({this.scrollController});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          brightness: Brightness.light, //電波、時間、充電表示の色darkは黒に変化。
          backgroundColor: Colors.white,
          title: Text(
            'Facebook',
            style: TextStyle(
              color: Palette.facebookBlue,
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
              letterSpacing: -1.2, //文字幅収縮。
            ),
          ),
          centerTitle: false,
          floating: true, //下へスクロール後、上へ少しでもスクロールするとAppBarが覗く。
          actions: [
            CircleButton(
              iconData: Icons.search,
              iconSize: 30.0,
              onPressed: () {},
            ),
            CircleButton(
              iconData: FlutterIcons.facebook_messenger_faw5d,
              iconSize: 30.0,
              onPressed: () {},
            ),
          ],
        ),
        SliverToBoxAdapter(
          //CustomScrollViewのslivers内になる為、ToBoxAdapterにする必要がある。
          child: UserPostContainer(currentUser: currentUser),
        ),
        SliverPadding(
          //これもslivers内の為、普通のPaddingは不可。
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            //CustomScrollViewのslivers内になる為、ToBoxAdapterにする必要がある。
            child: RoomsContainer(onlineUsers: onlineUsers),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            //CustomScrollViewのslivers内になる為、ToBoxAdapterにする必要がある。
            child:
            StoriesContainer(currentUser: currentUser, stories: stories),
          ),
        ),
        SliverList( //これもslivers内の為、普通のListViewは使えず。
          delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final Post post = posts[index];
                return PostContainer(post: post);
              },
              childCount: posts.length
          ),
        ),
      ],
    );
  }
}
