import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String label;

  const Option({this.iconData, this.color, this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: <Widget>[
          Icon(
            iconData,
            size: 38.0,
            color: color,
          ),
          SizedBox(
            width: 6.0,
          ),
          Flexible(
            child: Text(
              label,
              style: TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
