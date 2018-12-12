import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 18,
        color: Colors.grey,
        letterSpacing: 1,
        fontWeight: FontWeight.w500,
      ),
      child: Column(
        children: <Widget>[NormalText(), MySpanText()],
      ),
    );
  }
}

/*
* 正常的文本
* */
class NormalText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "正常的文本控件",
      style: TextStyle(
        color: Colors.red,
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

/*TextSpan
* 文本片段，可以对文本片段单独设置样式
* */
class MySpanText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: "网址:"),
          TextSpan(
            text: "http//:baidu.com/",
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
