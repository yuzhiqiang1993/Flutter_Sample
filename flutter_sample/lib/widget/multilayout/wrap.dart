import 'package:flutter/material.dart';

/*
* 可以让子控件自动换行的控件
*
* */
class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0, // 控件之间的间距
      runSpacing: 5.0, // 行间距
      children: <Widget>[
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: Text('AH')),
          label: Text('Hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: Text('ML')),
          label: Text('Lafayette'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: Text('HM')),
          label: Text('Mulligan'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: Text('JL')),
          label: Text('Laurens'),
        ),
      ],
    );
  }
}
