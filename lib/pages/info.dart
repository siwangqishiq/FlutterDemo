import 'package:flutter/material.dart';
import 'setting_page.dart';

class InfoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InfoState();
}

class InfoState extends State<InfoPage>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("我是个人信息面板"),
        MaterialButton(
          child: Text(
            "点我跳转",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          elevation: 10.0,
          color: Colors.redAccent,
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=> SettingPage("你好 世界 setting")
              )
            );
          },
        )
      ],
    );
  }
}