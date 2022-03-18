import 'package:flutter/material.dart';
import 'package:flutter_practice/myvalue.dart';
import 'package:flutter_practice/myvalueslider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

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
        home: StateNotifierProvider<MyValueStateNotifier, MyValue>(
          create: (_) => MyValueStateNotifier(),
          child: MyHomePage(title: 'Flutter Demo Home Page'),
        ));
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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title!),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Consumer<MyValue>( ... // Providerの場合
            Text(
                context
                    .select<MyValue, double>((state) => state.value)
                    .toStringAsFixed(2),
                style: TextStyle(fontSize: 100)),
            MyValueSlider()
          ],
        ));
  }
}