import 'package:flutter/material.dart';
import 'package:flutter_practice/MyData.dart';
import 'package:flutter_practice/MyInheritedWidget.dart';
import 'package:flutter_practice/Slider.dart';
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
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => MyData(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title!),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<MyData>(
                  // context.readを使ってアクセス
                  builder: (context, schedule, _) => Text(
                      context.select(
                          (MyData mydata) => mydata.value.toStringAsFixed(2)),
                      style: TextStyle(fontSize: 100))),
              MySlider()
            ],
          )),
    );
  }
}