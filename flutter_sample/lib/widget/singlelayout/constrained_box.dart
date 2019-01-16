import 'package:flutter/material.dart';

/*
* 设置子控件的宽高，此时子控件本身设置的宽高无效
*
* */
class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 200,
          minHeight: 100,
        ),
        child: Container(
          width: 50,
          height: 50,
          child: Text(
            "ConstrainedBox",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
