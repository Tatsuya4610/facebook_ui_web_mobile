import 'package:facebook_ui_web_mobile/widgets/contacts_list.dart';
import 'package:facebook_ui_web_mobile/widgets/options_list.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui_web_mobile/data/demo_data.dart';
import 'package:facebook_ui_web_mobile/model/post_model.dart';
import 'package:facebook_ui_web_mobile/widgets/post_cotainer.dart';
import 'package:facebook_ui_web_mobile/widgets/rooms_container.dart';
import 'package:facebook_ui_web_mobile/widgets/stories_container.dart';
import 'package:facebook_ui_web_mobile/widgets/user_post_container.dart';

class HomeScreenDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;
  //モバイルとデスクトップの画面移行時にスクロール状態を引き継ぐ。

  const HomeScreenDesktop({this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: OptionsList(currentUser: currentUser),
            ),
          )
        ),
        Spacer(),
        Container(
          width: 600.0,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(
                  //CustomScrollViewのslivers内になる為、ToBoxAdapterにする必要がある。
                  child:
                  StoriesContainer(currentUser: currentUser, stories: stories),
                ),
              ),
              SliverToBoxAdapter(
                //CustomScrollViewのslivers内になる為、ToBoxAdapterにする必要がある。
                child: UserPostContainer(currentUser: currentUser),
              ),
              SliverPadding(
                //これもslivers内の為、普通のPaddingは不可。
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                sliver: SliverToBoxAdapter(
                  //CustomScrollViewのslivers内になる為、ToBoxAdapterにする必要がある。
                  child: RoomsContainer(onlineUsers: onlineUsers),
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
          ),
        ),
        Spacer(),
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: ContactsList(users: onlineUsers),
            ),
          )
        )
      ],
    );
  }
}
