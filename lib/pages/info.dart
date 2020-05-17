import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InfoState();
}

class InfoState extends State<InfoPage>{
  @override
  Widget build(BuildContext context) {
    return Text("我是个人信息面板");
  }
}