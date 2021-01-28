import 'package:facebook_ui_web_mobile/model/post_model.dart';
import 'package:facebook_ui_web_mobile/model/story_model.dart';
import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:flutter/cupertino.dart';

final User currentUser = User(
  name: 'ポチ',
  image: AssetImage('assets/images/dog1.jpg'),
);

final List<User> onlineUsers = [
  User(name: 'ポチ', image: AssetImage('assets/images/dog1.jpg')),
  User(name: 'タマ', image: AssetImage('assets/images/dog2.jpg')),
  User(name: 'シロ', image: AssetImage('assets/images/dog3.jpg')),
  User(name: 'クロ', image: AssetImage('assets/images/dog4.jpg')),
  User(name: 'マロン', image: AssetImage('assets/images/dog5.jpg')),
  User(name: 'ハナ', image: AssetImage('assets/images/dog6.jpg')),
  User(name: 'ムギ', image: AssetImage('assets/images/dog7.jpg')),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[6],
    image: AssetImage('assets/images/dog7.jpg'),
  ),
  Story(
    user: onlineUsers[3],
    image: AssetImage('assets/images/dog4.jpg'),
  ),
  Story(
    user: onlineUsers[1],
    image: AssetImage('assets/images/dog2.jpg'),
  ),
  Story(
    user: onlineUsers[2],
    image: AssetImage('assets/images/dog3.jpg'),
  ),
  Story(
    user: onlineUsers[5],
    image: AssetImage('assets/images/dog6.jpg'),
  ),
  Story(
    user: onlineUsers[4],
    image: AssetImage('assets/images/dog5.jpg'),
  ),
  Story(
    user: onlineUsers[6],
    image: AssetImage('assets/images/dog7.jpg'),
  ),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'お腹減った',
    timeAgo: '10分前',
    image:  AssetImage('assets/images/dog1.jpg'),
    likes: 10,
    comments: 1,
    shares: 2,
  ),
  Post(
    user: onlineUsers[2],
    caption: '遊ぼ〜',
    timeAgo: '15分前',
    image:  null,
    likes: 8,
    comments: 2,
    shares: 4,
  ),
  Post(
    user: onlineUsers[4],
    caption: '仕事中',
    timeAgo: '20分前',
    image:  null,
    likes: 7,
    comments: 3,
    shares: 6,
  ),
  Post(
    user: onlineUsers[5],
    caption: '昼ごはん美味しい',
    timeAgo: '25分前',
    image:  AssetImage('assets/images/dog6.jpg'),
    likes: 30,
    comments: 4,
    shares: 8,
  ),
  Post(
    user: onlineUsers[2],
    caption: '仮眠中',
    timeAgo: '30分前',
    image:  null,
    likes: 21,
    comments: 5,
    shares: 10,
  ),
  Post(
    user: onlineUsers[6],
    caption: '雨降ってきた',
    timeAgo: '35分前',
    image:  AssetImage('assets/images/dog7.jpg'),
    likes: 20,
    comments: 6,
    shares: 12,
  ),
  Post(
    user: onlineUsers[4],
    caption: '忘れ物した！',
    timeAgo: '40分前',
    image:  null,
    likes: 9,
    comments: 7,
    shares: 14,
  ),
];
