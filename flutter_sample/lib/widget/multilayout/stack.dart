import 'package:flutter/material.dart';

/*
* 堆叠的方式排列布局
* */
class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547639589928&di=6d46424b47eec79a7f80bace2999217d&imgtype=0&src=http%3A%2F%2Fp0.ssl.qhimg.com%2Ft01c3f5bf72e7d1ac67.png",
        ),
        Text(
          "Stack",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
      alignment: Alignment.bottomCenter,
    );
  }
}
