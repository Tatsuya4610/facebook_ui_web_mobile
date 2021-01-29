import 'package:facebook_ui_web_mobile/model/user_model.dart';
import 'package:facebook_ui_web_mobile/widgets/user_card.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  final List<User> users;

  const ContactsList({this.users});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  '連絡先',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 8.0,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: UserCard(
                    user: users[index],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
