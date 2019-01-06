import 'package:flutter/material.dart';

/*
* 变换
* 
* */
class TransformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(30,30,40),
      alignment: Alignment.centerLeft,
      child: Container(
        width: 100,
        height: 300,
        color: Colors.redAccent,
        child: Text("Transform"),
      ),
    );
  }
}
