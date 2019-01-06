import 'package:flutter/material.dart';

/*
* 图片控件
* */
class ImgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NativeImg(), NetImg(), MyIcon()],
    );
  }
}

/*加载本地图片*/
class NativeImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.redAccent,
      child: Image.asset(
        "imgs/code.png",
        color: Colors.red,
        colorBlendMode: BlendMode.colorDodge,
        alignment: Alignment.bottomLeft,
        repeat: ImageRepeat.repeatX,
      ),
    );
  }
}

/*加载网络图片*/
class NetImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://img-blog.csdnimg.cn/20181210151747299.jpg",
    );
  }
}

/*图标*/
class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.camera,
      size: 50,
      color: Colors.cyan,
      textDirection: TextDirection.ltr,
    );
  }
}
