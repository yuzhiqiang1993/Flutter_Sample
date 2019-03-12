import 'package:flutter/material.dart';

/*
* 可以让子控件自动换行的控件
*
* */
class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 2,
      runSpacing: 5,
      children: Boxs(),
    );
  }


  /*一个渐变颜色的正方形*/
  List<Widget> Boxs() => List.generate(10, (index) {
        return Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orangeAccent,
              Colors.orange,
              Colors.deepOrange
            ]),
          ),
          child: Text(
            "${index}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      });
}
