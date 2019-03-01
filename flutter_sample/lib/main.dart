import 'package:flutter/material.dart';
import 'package:flutter_sample/widget/multilayout/column.dart';
import 'package:flutter_sample/widget/multilayout/customMultiChildLayout.dart';
import 'package:flutter_sample/widget/multilayout/expanded.dart';
import 'package:flutter_sample/widget/multilayout/flow.dart';
import 'package:flutter_sample/widget/multilayout/gridview.dart';
import 'package:flutter_sample/widget/multilayout/index_stack.dart';
import 'package:flutter_sample/widget/multilayout/listbody.dart';
import 'package:flutter_sample/widget/multilayout/listview.dart';
import 'package:flutter_sample/widget/multilayout/row.dart';
import 'package:flutter_sample/widget/multilayout/stack.dart';
import 'package:flutter_sample/widget/multilayout/table.dart';
import 'package:flutter_sample/widget/multilayout/wrap.dart';

/*入口函数*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter入门示例程序',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: ListViewBuilder(),
      ),
    );
  }
}
