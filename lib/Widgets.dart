import 'package:flutter/material.dart';
import 'package:flutter_practice/MyInheritedWidget.dart';
class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyInheritedWidget _myInheritedWidget = MyInheritedWidget.of(context);
    int count = _myInheritedWidget.count;
    return Text(count.toString());
  }
}
