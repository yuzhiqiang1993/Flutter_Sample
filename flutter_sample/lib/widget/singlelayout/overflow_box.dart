import 'package:flutter/material.dart';

class OverflowBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      maxWidth: 30,
      child: Text("OverflowBox,OverflowBox,OverflowBox"),
    );
  }
}
