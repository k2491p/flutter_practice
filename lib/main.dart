import 'package:flutter/material.dart';
import 'package:flutter_practice/TestPage1.dart';
import 'package:flutter_practice/TestPage2.dart';
import 'package:flutter_practice/TestPage3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "/test1": (BuildContext context) => TestPage1(),
        "/test2": (BuildContext context) => TestPage2(),
        "/test3": (BuildContext context) => TestPage3(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TestPage1());
  }
  // int _counter = 0;
  // String _type = "偶数";

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //     if (_counter % 2 == 0) {
  //       _type = "偶数";
  //     } else {
  //       _type = "奇数";
  //     }
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Text(
  //             'You have pushed the button this many times:',
  //           ),
  //           Text(
  //             '$_counter',
  //             style: Theme.of(context).textTheme.headline4,
  //           ),
  //           if (_counter % 2 == 0)
  //             Text('偶数です?', style: TextStyle(fontSize: 20, color: Colors.red)),
  //           if (_counter % 2 == 1)
  //             Text('奇数です!', style: TextStyle(fontSize: 20, color: Colors.red))
  //         ],
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //       child: Icon(Icons.add),
  //     ), // This trailing comma makes auto-formatting nicer for build methods.
  //   );
  // }
}
