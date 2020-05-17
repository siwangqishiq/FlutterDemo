import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget{
  final String _content;

  SettingPage(this._content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_content),
      ),
      body: Center(
        child: Text(
          _content,
          style: TextStyle(
            fontSize: 30,
            color: Colors.redAccent
          ),
        )
      ),
    );
  }
  
}//end class