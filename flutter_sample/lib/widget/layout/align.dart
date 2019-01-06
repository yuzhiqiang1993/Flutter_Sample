import 'package:flutter/material.dart';

/*
* 用于设置子控件相对于自身的对齐方式
* */
class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Text(
        "Align",
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
        ),
      ),
    );
  }
}
