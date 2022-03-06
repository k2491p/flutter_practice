import "dart:math" as math;
class NullSample {
  static method1() {
    int x = 10; // nullの可能性はない
    int? y = getNullable(); // nullの可能性がある
    print(x);
    print(y);
   
    //x = y; // Non-NullableにNullableを入れるのはコンパイルエラー
    //y = x; // NullableにNon-Nullableを入れるのはOK

    if (y != null) {
      x = y; //nullチェックの後のためコンパイルOK
    }

    print(x);
    print(y);

  }
  //ランダムでnullか1を返すメソッド
  static getNullable() {
    var rand = new math.Random();
    if (rand.nextInt(2) == 0) {
      return null;
    }
    return 1;
  }
}