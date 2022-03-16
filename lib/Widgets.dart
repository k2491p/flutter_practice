import 'package:flutter/material.dart';
import 'package:flutter_practice/MyInheritedWidget.dart';
import 'package:provider/provider.dart';
class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MyInheritedWidget _myInheritedWidget = MyInheritedWidget.of(context);
    // int count = _myInheritedWidget.count;
    int count;
    try {

    
    count = Provider.of<int>(context);
    } catch (e) {
      count = 0;
    }
    
    return Text("$count", style: TextStyle(fontSize: 100));
  }
}
