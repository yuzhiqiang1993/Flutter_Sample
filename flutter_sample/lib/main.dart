import 'package:flutter/material.dart';
import 'package:flutter_sample/widget/layout/align.dart';
import 'package:flutter_sample/widget/layout/aspectRatio.dart';
import 'package:flutter_sample/widget/layout/baseline.dart';
import 'package:flutter_sample/widget/layout/constrained_box.dart';
import 'package:flutter_sample/widget/layout/container.dart';
import 'package:flutter_sample/widget/layout/fitted_box.dart';
import 'package:flutter_sample/widget/layout/offstage.dart';
import 'package:flutter_sample/widget/layout/overflow_box.dart';
import 'package:flutter_sample/widget/layout/sized_box.dart';
import 'package:flutter_sample/widget/layout/transform.dart';

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
        body: ContainerWidget(),
      ),
    );
  }
}
