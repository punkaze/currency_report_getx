// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyResponseModel _$CurrencyResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CurrencyResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyResponseModel {
  UpdatedTimeModel get time => throw _privateConstructorUsedError;
  String get disclaimer => throw _privateConstructorUsedError;
  String get chartName => throw _privateConstructorUsedError;
  BpiModel get bpi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyResponseModelCopyWith<CurrencyResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyResponseModelCopyWith<$Res> {
  factory $CurrencyResponseModelCopyWith(CurrencyResponseModel value,
          $Res Function(CurrencyResponseModel) then) =
      _$CurrencyResponseModelCopyWithImpl<$Res, CurrencyResponseModel>;
  @useResult
  $Res call(
      {UpdatedTimeModel time,
      String disclaimer,
      String chartName,
      BpiModel bpi});

  $UpdatedTimeModelCopyWith<$Res> get time;
  $BpiModelCopyWith<$Res> get bpi;
}

/// @nodoc
class _$CurrencyResponseModelCopyWithImpl<$Res,
        $Val extends CurrencyResponseModel>
    implements $CurrencyResponseModelCopyWith<$Res> {
  _$CurrencyResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? disclaimer = null,
    Object? chartName = null,
    Object? bpi = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as UpdatedTimeModel,
      disclaimer: null == disclaimer
          ? _value.disclaimer
          : disclaimer // ignore: cast_nullable_to_non_nullable
              as String,
      chartName: null == chartName
          ? _value.chartName
          : chartName // ignore: cast_nullable_to_non_nullable
              as String,
      bpi: null == bpi
          ? _value.bpi
          : bpi // ignore: cast_nullable_to_non_nullable
              as BpiModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdatedTimeModelCopyWith<$Res> get time {
    return $UpdatedTimeModelCopyWith<$Res>(_value.time, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BpiModelCopyWith<$Res> get bpi {
    return $BpiModelCopyWith<$Res>(_value.bpi, (value) {
      return _then(_value.copyWith(bpi: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrencyResponseModelCopyWith<$Res>
    implements $CurrencyResponseModelCopyWith<$Res> {
  factory _$$_CurrencyResponseModelCopyWith(_$_CurrencyResponseModel value,
          $Res Function(_$_CurrencyResponseModel) then) =
      __$$_CurrencyResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UpdatedTimeModel time,
      String disclaimer,
      String chartName,
      BpiModel bpi});

  @override
  $UpdatedTimeModelCopyWith<$Res> get time;
  @override
  $BpiModelCopyWith<$Res> get bpi;
}

/// @nodoc
class __$$_CurrencyResponseModelCopyWithImpl<$Res>
    extends _$CurrencyResponseModelCopyWithImpl<$Res, _$_CurrencyResponseModel>
    implements _$$_CurrencyResponseModelCopyWith<$Res> {
  __$$_CurrencyResponseModelCopyWithImpl(_$_CurrencyResponseModel _value,
      $Res Function(_$_CurrencyResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? disclaimer = null,
    Object? chartName = null,
    Object? bpi = null,
  }) {
    return _then(_$_CurrencyResponseModel(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as UpdatedTimeModel,
      disclaimer: null == disclaimer
          ? _value.disclaimer
          : disclaimer // ignore: cast_nullable_to_non_nullable
              as String,
      chartName: null == chartName
          ? _value.chartName
          : chartName // ignore: cast_nullable_to_non_nullable
              as String,
      bpi: null == bpi
          ? _value.bpi
          : bpi // ignore: cast_nullable_to_non_nullable
              as BpiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyResponseModel implements _CurrencyResponseModel {
  const _$_CurrencyResponseModel(
      {required this.time,
      required this.disclaimer,
      required this.chartName,
      required this.bpi});

  factory _$_CurrencyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyResponseModelFromJson(json);

  @override
  final UpdatedTimeModel time;
  @override
  final String disclaimer;
  @override
  final String chartName;
  @override
  final BpiModel bpi;

  @override
  String toString() {
    return 'CurrencyResponseModel(time: $time, disclaimer: $disclaimer, chartName: $chartName, bpi: $bpi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyResponseModel &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.disclaimer, disclaimer) ||
                other.disclaimer == disclaimer) &&
            (identical(other.chartName, chartName) ||
                other.chartName == chartName) &&
            (identical(other.bpi, bpi) || other.bpi == bpi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, disclaimer, chartName, bpi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyResponseModelCopyWith<_$_CurrencyResponseModel> get copyWith =>
      __$$_CurrencyResponseModelCopyWithImpl<_$_CurrencyResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyResponseModelToJson(
      this,
    );
  }
}

abstract class _CurrencyResponseModel implements CurrencyResponseModel {
  const factory _CurrencyResponseModel(
      {required final UpdatedTimeModel time,
      required final String disclaimer,
      required final String chartName,
      required final BpiModel bpi}) = _$_CurrencyResponseModel;

  factory _CurrencyResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CurrencyResponseModel.fromJson;

  @override
  UpdatedTimeModel get time;
  @override
  String get disclaimer;
  @override
  String get chartName;
  @override
  BpiModel get bpi;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyResponseModelCopyWith<_$_CurrencyResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
