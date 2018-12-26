import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[RaisedBtn(), FlatBtn(), outlineBtn(), IconBtn()],
      ),
    );
  }
}

/*
*
* 漂浮按钮
* 跟andorid5.1以后的按钮很像
* */
class RaisedBtn extends StatelessWidget {
  _log() {
    print("点击了浮动按钮");
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: _log,
      child: Text("浮动按钮"),
      color: Colors.red,
      textColor: Colors.white,
      splashColor: Colors.black,
      highlightColor: Colors.green,
      elevation: 1,
      shape: StadiumBorder(
        side: BorderSide(
          color: Colors.white,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
    );
  }
}

/*扁平按钮*/
class FlatBtn extends StatelessWidget {
  _log() {
    print("点击了扁平按钮");
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: _log,
      child: Text("扁平按钮"),
      color: Colors.blue,
      textColor: Colors.black,
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}

/*带边线的按钮*/
class outlineBtn extends StatelessWidget {
  _log() {
    print("点击了边线按钮");
  }

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: _log,
      child: Text("边线按钮"),
      textColor: Colors.red,
      splashColor: Colors.green,
      highlightColor: Colors.black,
      shape: BeveledRectangleBorder(
        side: BorderSide(
          color: Colors.red,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

/*图标按钮*/
class IconBtn extends StatelessWidget {
  _log() {
    print("点击了图标按钮");
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.home),
      onPressed: _log,
      color: Colors.blueAccent,
      highlightColor: Colors.red,
    );
  }
}
