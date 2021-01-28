import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  CircleButton({
    this.iconData,
    this.iconSize,
    this.onPressed,
  });
  final IconData iconData;
  final double iconSize;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(iconData),
        onPressed: onPressed,
        color: Colors.black,
        iconSize: iconSize,
      ),
    );
  }
}
