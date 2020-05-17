import "package:flutter/material.dart";
import 'pages/home.dart';
import 'pages/contacts.dart';
import 'pages/work.dart';
import 'pages/info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter 演示'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int mCurrentIndex = 0;

  List<StatefulWidget> mMainTabs = <StatefulWidget>[
    HomePage(),
    ContactPage(),
    WorkPage(),
    InfoPage()
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: mMainTabs[mCurrentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: mCurrentIndex,
        type:BottomNavigationBarType.fixed,
        onTap: _switchTab,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text("主页"),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            title: Text("通讯录"),
            icon: Icon(Icons.list)
          ),
          BottomNavigationBarItem(
            title: Text("工作"),
            icon: Icon(Icons.group_work)
          ),
          BottomNavigationBarItem(
            title: Text("我的"),
            icon: Icon(Icons.info)
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _switchTab(int newIndex){
    print("select index  = $newIndex");
    setState(() {
      mCurrentIndex = newIndex;
    });
  }
}
