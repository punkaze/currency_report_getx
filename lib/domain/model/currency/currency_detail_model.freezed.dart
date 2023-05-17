// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyDetailModel _$CurrencyDetailModelFromJson(Map<String, dynamic> json) {
  return _CurrencyDetailModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyDetailModel {
  String get code => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get rate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate_float')
  double get rateFloat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyDetailModelCopyWith<CurrencyDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyDetailModelCopyWith<$Res> {
  factory $CurrencyDetailModelCopyWith(
          CurrencyDetailModel value, $Res Function(CurrencyDetailModel) then) =
      _$CurrencyDetailModelCopyWithImpl<$Res, CurrencyDetailModel>;
  @useResult
  $Res call(
      {String code,
      String symbol,
      String rate,
      String description,
      @JsonKey(name: 'rate_float') double rateFloat});
}

/// @nodoc
class _$CurrencyDetailModelCopyWithImpl<$Res, $Val extends CurrencyDetailModel>
    implements $CurrencyDetailModelCopyWith<$Res> {
  _$CurrencyDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? symbol = null,
    Object? rate = null,
    Object? description = null,
    Object? rateFloat = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rateFloat: null == rateFloat
          ? _value.rateFloat
          : rateFloat // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyDetailModelCopyWith<$Res>
    implements $CurrencyDetailModelCopyWith<$Res> {
  factory _$$_CurrencyDetailModelCopyWith(_$_CurrencyDetailModel value,
          $Res Function(_$_CurrencyDetailModel) then) =
      __$$_CurrencyDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String symbol,
      String rate,
      String description,
      @JsonKey(name: 'rate_float') double rateFloat});
}

/// @nodoc
class __$$_CurrencyDetailModelCopyWithImpl<$Res>
    extends _$CurrencyDetailModelCopyWithImpl<$Res, _$_CurrencyDetailModel>
    implements _$$_CurrencyDetailModelCopyWith<$Res> {
  __$$_CurrencyDetailModelCopyWithImpl(_$_CurrencyDetailModel _value,
      $Res Function(_$_CurrencyDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? symbol = null,
    Object? rate = null,
    Object? description = null,
    Object? rateFloat = null,
  }) {
    return _then(_$_CurrencyDetailModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rateFloat: null == rateFloat
          ? _value.rateFloat
          : rateFloat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyDetailModel implements _CurrencyDetailModel {
  const _$_CurrencyDetailModel(
      {required this.code,
      required this.symbol,
      required this.rate,
      required this.description,
      @JsonKey(name: 'rate_float') this.rateFloat = 0});

  factory _$_CurrencyDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyDetailModelFromJson(json);

  @override
  final String code;
  @override
  final String symbol;
  @override
  final String rate;
  @override
  final String description;
  @override
  @JsonKey(name: 'rate_float')
  final double rateFloat;

  @override
  String toString() {
    return 'CurrencyDetailModel(code: $code, symbol: $symbol, rate: $rate, description: $description, rateFloat: $rateFloat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyDetailModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rateFloat, rateFloat) ||
                other.rateFloat == rateFloat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, symbol, rate, description, rateFloat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyDetailModelCopyWith<_$_CurrencyDetailModel> get copyWith =>
      __$$_CurrencyDetailModelCopyWithImpl<_$_CurrencyDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyDetailModelToJson(
      this,
    );
  }
}

abstract class _CurrencyDetailModel implements CurrencyDetailModel {
  const factory _CurrencyDetailModel(
          {required final String code,
          required final String symbol,
          required final String rate,
          required final String description,
          @JsonKey(name: 'rate_float') final double rateFloat}) =
      _$_CurrencyDetailModel;

  factory _CurrencyDetailModel.fromJson(Map<String, dynamic> json) =
      _$_CurrencyDetailModel.fromJson;

  @override
  String get code;
  @override
  String get symbol;
  @override
  String get rate;
  @override
  String get description;
  @override
  @JsonKey(name: 'rate_float')
  double get rateFloat;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyDetailModelCopyWith<_$_CurrencyDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
