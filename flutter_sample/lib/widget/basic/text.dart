import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NormalText();
  }
}

/*
* Text属性
* */
class NormalText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.",
      style: TextStyle(
          color: Colors.red,
          fontSize: 18,
          letterSpacing: 1,
          wordSpacing: 2,
          height: 1.2,
          fontWeight: FontWeight.w600),
      textAlign: TextAlign.justify,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
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

/*带有默认样式的Text*/
class MyDefaultStyleText extends StatelessWidget {
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
    ;
  }
}
