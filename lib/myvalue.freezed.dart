// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'myvalue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyValueTearOff {
  const _$MyValueTearOff();

  _MyValue call({double value = 0.0}) {
    return _MyValue(
      value: value,
    );
  }
}

/// @nodoc
const $MyValue = _$MyValueTearOff();

/// @nodoc
mixin _$MyValue {
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyValueCopyWith<MyValue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyValueCopyWith<$Res> {
  factory $MyValueCopyWith(MyValue value, $Res Function(MyValue) then) =
      _$MyValueCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class _$MyValueCopyWithImpl<$Res> implements $MyValueCopyWith<$Res> {
  _$MyValueCopyWithImpl(this._value, this._then);

  final MyValue _value;
  // ignore: unused_field
  final $Res Function(MyValue) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MyValueCopyWith<$Res> implements $MyValueCopyWith<$Res> {
  factory _$MyValueCopyWith(_MyValue value, $Res Function(_MyValue) then) =
      __$MyValueCopyWithImpl<$Res>;
  @override
  $Res call({double value});
}

/// @nodoc
class __$MyValueCopyWithImpl<$Res> extends _$MyValueCopyWithImpl<$Res>
    implements _$MyValueCopyWith<$Res> {
  __$MyValueCopyWithImpl(_MyValue _value, $Res Function(_MyValue) _then)
      : super(_value, (v) => _then(v as _MyValue));

  @override
  _MyValue get _value => super._value as _MyValue;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_MyValue(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_MyValue with DiagnosticableTreeMixin implements _MyValue {
  const _$_MyValue({this.value = 0.0});

  @JsonKey(defaultValue: 0.0)
  @override
  final double value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyValue(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyValue'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyValue &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$MyValueCopyWith<_MyValue> get copyWith =>
      __$MyValueCopyWithImpl<_MyValue>(this, _$identity);
}

abstract class _MyValue implements MyValue {
  const factory _MyValue({double value}) = _$_MyValue;

  @override
  double get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyValueCopyWith<_MyValue> get copyWith =>
      throw _privateConstructorUsedError;
}
