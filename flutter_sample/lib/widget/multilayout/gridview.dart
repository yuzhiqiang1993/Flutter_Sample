import 'package:flutter/material.dart';

/*
* 
* 网格布局
* */
class GridViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _GridViewVBuilder();
  }
}

class _GridViewVBuilder extends State<GridViewWidget> {
  List<int> indexs = List.generate(100, (index) {
    return index;
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      itemCount: indexs.length,
      itemBuilder: (context, index) {
        /*当数据加载完毕时 追加数据*/
        if (index == indexs.length - 1) {
          _addIndex();
        }

        return Text(
          "$index",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        );
      },
    );
  }

  void _addIndex() {
    /*这里要延时加载  否则会抱The widget on which setState() or markNeedsBuild() was called was:错误*/
    Future.delayed(Duration(milliseconds: 200)).then((e) {
      setState(() {
        indexs.add(indexs.length + 1);
      });
    });
  }
}
