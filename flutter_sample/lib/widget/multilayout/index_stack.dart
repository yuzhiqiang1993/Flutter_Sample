import 'package:flutter/material.dart';

/*
* 指定某一个子控件显示的帧布局
* */
class IndexStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: 1,
      children: <Widget>[
        Text("IndexStackWidget"),
        Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547639589928&di=6d46424b47eec79a7f80bace2999217d&imgtype=0&src=http%3A%2F%2Fp0.ssl.qhimg.com%2Ft01c3f5bf72e7d1ac67.png",
        ),
      ],
    );
  }
}
