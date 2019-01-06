import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NormalText(),
        MyTextSpan(),
        MyDefaultStyleText(),
      ],
    );
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
          fontSize: 20,
          letterSpacing: 1,
          wordSpacing: 2,
          height: 1.2,
          fontWeight: FontWeight.w600),
      textAlign: TextAlign.left,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

/*TextSpan
* 文本片段，可以对文本片段单独设置样式
* */
class MyTextSpan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: "网址:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
            text: "http//:baidu.com/",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
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
        /*这里我们设置了一些默认的样式*/
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 30,
          color: Colors.grey,
          letterSpacing: 1,
          wordSpacing: 3,
          fontWeight: FontWeight.bold,
        ),
        /*子节点就会默认继承父节点的样式，如果子节点重新设置了父节点中已设置的样式，那么以子节点设置的样式为准*/
        child: Column(
          children: <Widget>[
            Text(
              "text 1",
              style: TextStyle(
                /*这里我们重新指定一下颜色，那么最终的颜色就以子节点的设置为准*/
                color: Colors.deepOrange,
              ),
            ),
            Text(
              "text 2",
              style: TextStyle(
                inherit: false, //inherit设为false表示不继承父节点默认样式，默认值为true
                color: Colors.blue,
              ),
            ),
          ],
        ));
    ;
  }
}
