import 'package:flutter/material.dart';

/*
*设置子控件相对于父控件的适配方式
*
* */
class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      width: 200,
      height: 100,
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Text("FittedBox"),
      ),
    );
  }
}
