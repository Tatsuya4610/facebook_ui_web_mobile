import 'package:facebook_ui_web_mobile/model/story_model.dart';
import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:facebook_ui_web_mobile/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StoriesContainer extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const StoriesContainer({this.currentUser, this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200.0,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length, //最初は自分用の追加UIの為。
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: StoryCard(
                isAddStory: true,
                currentUser: currentUser,
              ),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: StoryCard(story: story),
          );
        },
      ),
    );
  }
}
