import 'package:flutter/material.dart';
import 'package:flutter_sample/widget/multilayout/flow.dart';

/*
* 垂直排列的线性布局
* */
class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
        width: 1,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Box("1"),
          Box("2"),
          Box("3"),
          Box("4"),
        ],
      ),
    );
  }
}
