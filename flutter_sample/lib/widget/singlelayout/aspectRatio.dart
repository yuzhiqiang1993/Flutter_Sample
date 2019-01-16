import 'package:flutter/material.dart';

/*
*
* 设置子控件的宽高比
* */
class AspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,//宽高比为3:1
      child: Container(
        color: Colors.blue,
        child: Text("AspectRatio"),
      ),
    );
  }
}
