import 'package:flutter/material.dart';
import 'package:flutter_sample/widget/bottom_nav/index_page.dart';

/*入口函数*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter入门示例程序',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: IndexPage(),
    );
  }
}
