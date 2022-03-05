import 'package:flutter_practice/Util/calc.dart';
import 'package:flutter_test/flutter_test.dart';
//import 'package:flutter_practice/main.dart';

void main() {
  test("mytest1", () {
    var ans = 10;
    expect(ans, 10);
  });

  test("calcTest", () {
    var calc = Calc();
    expect(calc.add(1, 2), 3);
  });
}