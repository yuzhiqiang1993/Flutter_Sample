import 'package:flutter/material.dart';

/*
* 
* 表格布局
* */
class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      /*设置列宽*/
      columnWidths: {
        0: FixedColumnWidth(50),
        1: FixedColumnWidth(150),
        2: FixedColumnWidth(50),
        3: FixedColumnWidth(150),
      },
      /*设置边框样式*/
      border: TableBorder.all(
        color: Colors.black,
        width: 1,
      ),
      /*子控件*/
      children: List<TableRow>.generate(5, (rowIndex) {
        return TableRow(
          children: List.generate(4, (colunIndex) {
            return MyText(
              "$rowIndex.$colunIndex",
            );
          }),
        );
      }),
    );
  }
}

class MyText extends StatelessWidget {
  String _content;

  MyText(String content) {
    this._content = content;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _content,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.lightBlue,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
