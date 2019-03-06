import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldState();
  }
}

class _TextFieldState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            UserEdit(),
            PwdEdit(),
          ],
        ),
      ),
    );
  }
}

class UserEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        errorBorder: UnderlineInputBorder(
          /*边角*/
          borderRadius: BorderRadius.all(
            Radius.circular(30), //边角为30
          ),
          borderSide: BorderSide(
            color: Colors.amber, //边线颜色为黄色
            width: 2, //边线宽度为2
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.green, //边框颜色为绿色
          width: 5, //宽度为5
        )),
        labelText: "labelText",
        helperText: "helperText",
         errorText: "errorText",
        hintText: "hintText",
        prefixIcon: Icon(Icons.perm_identity),
      ),
    );
  }
}

class PwdEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
//        icon: Icon(Icons.person),
//        prefixIcon: Icon(Icons.perm_identity),
//        labelText: "手机号",
//        helperText: "用户名为手机号或者邮箱",
//        errorText: "手机号码不正确",
//        hintText: "请输入手机号码",
//        prefixText: "+86",
//        suffixIcon: Icon(
//          Icons.remove_red_eye,
//        ),
//        suffixText: "隐藏输入文本",
//        counterText: "0/10",
//        filled: true,
          ),
    );
  }
}
