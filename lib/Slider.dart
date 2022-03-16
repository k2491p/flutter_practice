import 'package:flutter/material.dart';
import 'package:flutter_practice/MyData.dart';
import 'package:provider/provider.dart';
class MySlider extends StatefulWidget {
  @override
  createState() => _MySliderState();
}
class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    // context.select,readを使ってアクセス
    return Slider(
        value: context.select((MyData mydata) => mydata.value),
        onChanged: (value) => context.read<MyData>().value = value);
  }
}