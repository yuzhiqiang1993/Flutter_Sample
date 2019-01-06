import 'package:flutter/material.dart';


/*
*
* 设置子控件的宽高比
* */
class AspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: AspectRatio(
        aspectRatio: 5,//宽高比
        child: Text("AspectRatio"),
      ),
    );
  }
}
