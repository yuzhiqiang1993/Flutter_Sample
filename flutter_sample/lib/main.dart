import 'package:flutter/material.dart';
import 'package:flutter_sample/widget/basic/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter入门示例程序',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: "Flitter Sample"),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: MyText());
  }
}
