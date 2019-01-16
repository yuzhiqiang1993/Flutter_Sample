import 'package:flutter/material.dart';

/*
* 用于设置间距的Widget
*
* */
class MyPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Text(
        "Padding",
        style: TextStyle(color: Colors.blueAccent),
      ),
    );
  }
}
