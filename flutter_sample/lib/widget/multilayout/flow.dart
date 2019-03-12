import 'package:flutter/material.dart';

/*
* 流式布局
* 自定义FlowDelegate
* */

double boxSize = 80.0;

class FlowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: MyFlowDelegate(),
      children: List.generate(10, (index) {
        return Box(index);
      }),
    );
  }

  /*一个带渐变颜色的正方形*/
  Widget Box(index) => Container(
        width: boxSize,
        height: boxSize,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orangeAccent, Colors.orange, Colors.deepOrange]),
        ),
        child: Text(
          index.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}

class MyFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    /*屏幕宽度*/
    var screenW = context.size.width;

    double padding = 5; //间距
    double offsetX = padding; //x坐标
    double offsetY = padding; //y坐标

    for (int i = 0; i < context.childCount; i++) {
      /*如果当前x左边加上子控件宽度小于屏幕宽度  则继续绘制  否则换行*/
      if (offsetX + boxSize < screenW) {
        /*绘制子控件*/
        context.paintChild(i,
            transform: Matrix4.translationValues(offsetX, offsetY, 0));
        /*更改x坐标*/
        offsetX = offsetX + boxSize + padding;
      } else {
        /*将x坐标重置为margin*/
        offsetX = padding;
        /*计算y坐标的值*/
        offsetY = offsetY + boxSize + padding;
        /*绘制子控件*/
        context.paintChild(i,
            transform: Matrix4.translationValues(offsetX, offsetY, 0));
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return true;
  }
}
