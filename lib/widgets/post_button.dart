import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;

  const PostButton({this.icon,this.label,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material( //MaterialにしないとInkWellのTap時の波紋が反映されない。
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                icon,
                SizedBox(width: 4.0,),
                Text(label),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
