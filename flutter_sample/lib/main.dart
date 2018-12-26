import 'package:flutter/material.dart';
import 'package:flutter_sample/widget/basic/img.dart';
import 'package:flutter_sample/widget/basic/text.dart';
import 'package:flutter_sample/widget/basic/button.dart';

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
        body: ImgWidget(),
      ),
    );
  }
}
