import 'package:flutter/material.dart';

/*
*
* 水平排列的线性布局
* */
class RowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min, //尽可能小的减少空闲空间
      children: <Widget>[
        Box("1"),
        Box("2"),
        Box("3"),
      ],
    );
  }
}

/*
* 一个带渐变颜色的正方形
* */
class Box extends StatelessWidget {
  String index;
  double boxSize = 100;

  Box(String index) {
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boxSize,
      height: boxSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.orange, Colors.deepOrange]),
      ),
      child: Text(
        index,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
