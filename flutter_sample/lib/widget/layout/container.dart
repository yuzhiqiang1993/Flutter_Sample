import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      //   color: Colors.orangeAccent,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.redAccent,
        Colors.orangeAccent,
        Colors.red,
      ])),
      child: Text(
        "Container",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
