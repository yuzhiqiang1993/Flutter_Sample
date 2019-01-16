import 'package:flutter/material.dart';

/*
* 列表控件
*
* */
class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListBuilder();
  }
}

class NormalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        ListBody(


        )

      ],
    );
  }
}

class ListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Text("Item$index");
    },
    semanticChildCount: 20,);
  }
}
