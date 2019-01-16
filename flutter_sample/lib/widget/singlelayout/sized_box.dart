import 'package:flutter/material.dart';

/*
*设置子控件的宽高度
*
* */
class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 300,
        child: Container(
          alignment: Alignment.center,
          color: Colors.redAccent,
          child: Text("SizedBox"),
        ));
  }
}
