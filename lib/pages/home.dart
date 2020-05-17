import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Text("我是主页");
  }
}