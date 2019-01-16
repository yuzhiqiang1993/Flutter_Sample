import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

/*
* 
* 网格布局
* */
class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewCount();
  }
}

class GridViewNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: GridDelegate(),
      children: List.generate(
        20,
        (index) {
          return Box(index + 1);
        },
      ),
    );
  }
}

class GridDelegate extends SliverGridDelegate {
  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    return null;
  }

  @override
  bool shouldRelayout(SliverGridDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    return null;
  }
}

class GridViewCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 10,
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      children: List.generate(
        20,
        (index) {
          return Box(index + 1);
        },
      ),
    );
  }
}

class Box extends StatelessWidget {
  var index;

  Box(var index) {
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.orange, Colors.deepOrange]),
      ),
      child: Text(
        index.toString(),
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
