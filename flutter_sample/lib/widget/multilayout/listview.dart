import 'package:flutter/material.dart';

/*
* 列表控件
*
* */
class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 60,
      children: List.generate(50, (index) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
          ),
          child: Text("item${index}"),
        );
      }),
    );
  }
}

class ListViewBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListViewBuilder();
  }
}

class _ListViewBuilder extends State<ListViewBuilder> {
  /*初始项为50个*/
  List<int> indexs = List.generate(50, (index) {
    return index;
  });

  @override
  Widget build(BuildContext context) {
    /*灰色分割线*/
    var divider = Divider(
      color: Colors.grey,
    );

    return ListView.separated(
        padding: EdgeInsets.all(10),
        itemCount: indexs.length+1,
        separatorBuilder: (context, index) {
          return divider;
        },
        itemBuilder: (context, index) {
          /*加载到底部时且集合数量小于100的话，获取更多数据*/
          if (index == indexs.length) {
            if (indexs.length < 100) {
              _getMoreData(index);

              /*加载框*/
              return Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                  ),
                ),
              );
            } else {
              return Container(
                alignment: Alignment.center,
                child: Text("加载完毕"),
              );
            }
          }

          return Text(
            "${index}",
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 2,
            ),
          );
        });
  }

  void _getMoreData(int index) {
    Future.delayed(Duration(milliseconds: 300)).then((e) {
      setState(() {
        /*往集合里添加10条数据*/
        indexs.addAll(List.generate(10, (i) {
          return index + i;
        }));
      });
    });
  }
}
