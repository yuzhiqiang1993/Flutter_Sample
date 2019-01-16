import 'package:flutter/material.dart';

/*
* 使子控件居中的Widget
* */
class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      width: 150,
      height: 300,
      child: Center(
        child: Text("Center widget"),
      ),
    );
  }
}
