import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Flex(
        children: <Widget>[
          Text("Expanded"),
          Text("Expanded"),
          Text("Expanded"),
        ],
      ),
    );
  }
}
