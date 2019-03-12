import 'package:flutter/material.dart';
import 'package:flutter_sample/widget/multilayout/flow.dart';

class CustomMultiChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: MultiChildDelegate(),
      children: <Widget>[],
    );
  }
}

class MultiChildDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {



  
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return false;
  }
}
