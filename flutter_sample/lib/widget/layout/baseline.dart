import 'package:flutter/material.dart';

/*
* 设置控件的基线
* */
class BaselineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      width: 100,
      height: 100,
      child: Baseline(
        baseline: 30,
        baselineType: TextBaseline.ideographic,
        child: Text("Baseline"),
      ),
    );
  }
}
