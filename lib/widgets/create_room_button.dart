import 'package:facebook_ui_web_mobile/config/palette.dart';
import 'package:flutter/material.dart';

class CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        //円枠
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.white,
      borderSide: BorderSide(
        width: 3.0,
        color: Colors.blueAccent[100],
      ),
      textColor: Palette.facebookBlue,
      child: Row(
        children: <Widget>[
          // ShaderMask( //注意点。Webでは使用できない。IconのColorをwhite以外にすると、その色が混ざった色合いになってしまう為注意。
          //   shaderCallback: (rect) =>
          //       Palette.createRoomGradient.createShader(rect),
          //   child: Icon(
          //     Icons.video_call,
          //     size: 35.0,
          //     color: Colors.white,
          //   ),
          // ),
          Icon(
            Icons.video_call,
            size: 35,
            color: Colors.purpleAccent,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            'Room\n作成',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
