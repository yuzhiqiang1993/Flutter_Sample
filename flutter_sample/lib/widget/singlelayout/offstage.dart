import 'package:flutter/material.dart';
/*
*
* 设置控件的显示与隐藏
*
* */
class OffstageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: false,
      child: Text("Offstage"),
    );
  }
}
