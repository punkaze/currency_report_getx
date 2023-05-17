// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bpi_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BpiModel _$BpiModelFromJson(Map<String, dynamic> json) {
  return _BpiModel.fromJson(json);
}

/// @nodoc
mixin _$BpiModel {
  @JsonKey(name: 'USD')
  CurrencyDetailModel get usd => throw _privateConstructorUsedError;
  @JsonKey(name: 'GBP')
  CurrencyDetailModel get gbp => throw _privateConstructorUsedError;
  @JsonKey(name: 'EUR')
  CurrencyDetailModel get eur => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BpiModelCopyWith<BpiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BpiModelCopyWith<$Res> {
  factory $BpiModelCopyWith(BpiModel value, $Res Function(BpiModel) then) =
      _$BpiModelCopyWithImpl<$Res, BpiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'USD') CurrencyDetailModel usd,
      @JsonKey(name: 'GBP') CurrencyDetailModel gbp,
      @JsonKey(name: 'EUR') CurrencyDetailModel eur});

  $CurrencyDetailModelCopyWith<$Res> get usd;
  $CurrencyDetailModelCopyWith<$Res> get gbp;
  $CurrencyDetailModelCopyWith<$Res> get eur;
}

/// @nodoc
class _$BpiModelCopyWithImpl<$Res, $Val extends BpiModel>
    implements $BpiModelCopyWith<$Res> {
  _$BpiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usd = null,
    Object? gbp = null,
    Object? eur = null,
  }) {
    return _then(_value.copyWith(
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as CurrencyDetailModel,
      gbp: null == gbp
          ? _value.gbp
          : gbp // ignore: cast_nullable_to_non_nullable
              as CurrencyDetailModel,
      eur: null == eur
          ? _value.eur
          : eur // ignore: cast_nullable_to_non_nullable
              as CurrencyDetailModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyDetailModelCopyWith<$Res> get usd {
    return $CurrencyDetailModelCopyWith<$Res>(_value.usd, (value) {
      return _then(_value.copyWith(usd: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyDetailModelCopyWith<$Res> get gbp {
    return $CurrencyDetailModelCopyWith<$Res>(_value.gbp, (value) {
      return _then(_value.copyWith(gbp: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyDetailModelCopyWith<$Res> get eur {
    return $CurrencyDetailModelCopyWith<$Res>(_value.eur, (value) {
      return _then(_value.copyWith(eur: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BpiModelCopyWith<$Res> implements $BpiModelCopyWith<$Res> {
  factory _$$_BpiModelCopyWith(
          _$_BpiModel value, $Res Function(_$_BpiModel) then) =
      __$$_BpiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'USD') CurrencyDetailModel usd,
      @JsonKey(name: 'GBP') CurrencyDetailModel gbp,
      @JsonKey(name: 'EUR') CurrencyDetailModel eur});

  @override
  $CurrencyDetailModelCopyWith<$Res> get usd;
  @override
  $CurrencyDetailModelCopyWith<$Res> get gbp;
  @override
  $CurrencyDetailModelCopyWith<$Res> get eur;
}

/// @nodoc
class __$$_BpiModelCopyWithImpl<$Res>
    extends _$BpiModelCopyWithImpl<$Res, _$_BpiModel>
    implements _$$_BpiModelCopyWith<$Res> {
  __$$_BpiModelCopyWithImpl(
      _$_BpiModel _value, $Res Function(_$_BpiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usd = null,
    Object? gbp = null,
    Object? eur = null,
  }) {
    return _then(_$_BpiModel(
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as CurrencyDetailModel,
      gbp: null == gbp
          ? _value.gbp
          : gbp // ignore: cast_nullable_to_non_nullable
              as CurrencyDetailModel,
      eur: null == eur
          ? _value.eur
          : eur // ignore: cast_nullable_to_non_nullable
              as CurrencyDetailModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BpiModel implements _BpiModel {
  const _$_BpiModel(
      {@JsonKey(name: 'USD') required this.usd,
      @JsonKey(name: 'GBP') required this.gbp,
      @JsonKey(name: 'EUR') required this.eur});

  factory _$_BpiModel.fromJson(Map<String, dynamic> json) =>
      _$$_BpiModelFromJson(json);

  @override
  @JsonKey(name: 'USD')
  final CurrencyDetailModel usd;
  @override
  @JsonKey(name: 'GBP')
  final CurrencyDetailModel gbp;
  @override
  @JsonKey(name: 'EUR')
  final CurrencyDetailModel eur;

  @override
  String toString() {
    return 'BpiModel(usd: $usd, gbp: $gbp, eur: $eur)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BpiModel &&
            (identical(other.usd, usd) || other.usd == usd) &&
            (identical(other.gbp, gbp) || other.gbp == gbp) &&
            (identical(other.eur, eur) || other.eur == eur));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, usd, gbp, eur);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BpiModelCopyWith<_$_BpiModel> get copyWith =>
      __$$_BpiModelCopyWithImpl<_$_BpiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BpiModelToJson(
      this,
    );
  }
}

abstract class _BpiModel implements BpiModel {
  const factory _BpiModel(
          {@JsonKey(name: 'USD') required final CurrencyDetailModel usd,
          @JsonKey(name: 'GBP') required final CurrencyDetailModel gbp,
          @JsonKey(name: 'EUR') required final CurrencyDetailModel eur}) =
      _$_BpiModel;

  factory _BpiModel.fromJson(Map<String, dynamic> json) = _$_BpiModel.fromJson;

  @override
  @JsonKey(name: 'USD')
  CurrencyDetailModel get usd;
  @override
  @JsonKey(name: 'GBP')
  CurrencyDetailModel get gbp;
  @override
  @JsonKey(name: 'EUR')
  CurrencyDetailModel get eur;
  @override
  @JsonKey(ignore: true)
  _$$_BpiModelCopyWith<_$_BpiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
