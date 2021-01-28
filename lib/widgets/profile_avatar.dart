import 'package:facebook_ui_web_mobile/config/palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final AssetImage image;
  final bool isActive;
  final bool hasBorder;

  ProfileAvatar({
    this.image,
    this.isActive = false,
    this.hasBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ?  17.0 : 20.0, //若干小さくする事で縁を作る。
            backgroundColor: Colors.grey[200],
            backgroundImage: image,
          ),
        ),
        isActive
            ? Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                    color: Palette.online,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                ),
              )
            : SizedBox.shrink() //shrinkで未表示。
      ],
    );
  }
}
