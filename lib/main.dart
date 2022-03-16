import 'package:flutter/material.dart';
import 'package:flutter_practice/MyInheritedWidget.dart';
import 'package:flutter_practice/Widgets.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print("count:" + _counter.toString());
  }
  // Scaffoldの下のCenter部分を先に静的に作っておき、作り返さないように制御
  // 深い階層の伝播は証明できたためにシンプルにCenter->WidgetAに変更
  final Widget _widget = Center(
       child: Consumer<int>(
     builder: (context, value, _) => Text(
      value.toString(),
      style: TextStyle(fontSize: 100),
    ),
 ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      // 静的に作ったCenterより下のツリーを配置する
      // body: MyInheritedWidget(count: _counter, child: _widget),
      body: Provider<int>.value(value: _counter, child: _widget),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}