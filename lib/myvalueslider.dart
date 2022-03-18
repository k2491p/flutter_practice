import 'package:flutter/material.dart';
import 'package:flutter_practice/myvalue.dart';
import 'package:provider/provider.dart';

class MyValueSlider extends StatefulWidget {
  @override
  createState() => _MyValueSliderState();
}

class _MyValueSliderState extends State<MyValueSlider> {
  @override
  Widget build(BuildContext context) {
    return Slider(
        value: context.select((MyValue myValue) => myValue.value),
        onChanged: (newValue) =>
            {context.read<MyValueStateNotifier>().change(newValue)});
  }
}