import 'package:flutter/material.dart';

/*
* 流式布局
* 自定义FlowDelegate
* */

class FlowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: MyFlowDelegate(),
      children: List.generate(
        10,
        (index) {
          return Box(index + 1);
        },
      ),
    );
  }
}

double boxSize = 100;

class Box extends StatelessWidget {
  var index;

  Box(var index) {
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
}

class MyFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double boxW = boxSize; //子控件宽高
    double margin = 10; //左边距
    double offsetX = margin; //x坐标
    double offsetY = margin; //y坐标

    for (int i = 0; i < context.childCount; i++) {
      /*如果当前x左边加上子控件宽度小于屏幕宽度  则继续绘制  否则换行*/
      if (offsetX + boxW < context.size.width) {
        /*绘制子控件*/
        context.paintChild(i,
            transform: Matrix4.translationValues(offsetX, offsetY, 0));
        /*更改x坐标*/
        offsetX = offsetX + boxW + margin;
      } else {
        /*将x坐标重置为margin*/
        offsetX = margin;
        /*计算y坐标的值*/
        offsetY = offsetY + boxW + margin;
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
