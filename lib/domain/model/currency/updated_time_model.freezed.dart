// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updated_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdatedTimeModel _$UpdatedTimeModelFromJson(Map<String, dynamic> json) {
  return _UpdatedTimeModel.fromJson(json);
}

/// @nodoc
mixin _$UpdatedTimeModel {
  String get updated => throw _privateConstructorUsedError;
  DateTime get updatedISO => throw _privateConstructorUsedError;
  String get updateduk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatedTimeModelCopyWith<UpdatedTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedTimeModelCopyWith<$Res> {
  factory $UpdatedTimeModelCopyWith(
          UpdatedTimeModel value, $Res Function(UpdatedTimeModel) then) =
      _$UpdatedTimeModelCopyWithImpl<$Res, UpdatedTimeModel>;
  @useResult
  $Res call({String updated, DateTime updatedISO, String updateduk});
}

/// @nodoc
class _$UpdatedTimeModelCopyWithImpl<$Res, $Val extends UpdatedTimeModel>
    implements $UpdatedTimeModelCopyWith<$Res> {
  _$UpdatedTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updated = null,
    Object? updatedISO = null,
    Object? updateduk = null,
  }) {
    return _then(_value.copyWith(
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      updatedISO: null == updatedISO
          ? _value.updatedISO
          : updatedISO // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateduk: null == updateduk
          ? _value.updateduk
          : updateduk // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdatedTimeModelCopyWith<$Res>
    implements $UpdatedTimeModelCopyWith<$Res> {
  factory _$$_UpdatedTimeModelCopyWith(
          _$_UpdatedTimeModel value, $Res Function(_$_UpdatedTimeModel) then) =
      __$$_UpdatedTimeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String updated, DateTime updatedISO, String updateduk});
}

/// @nodoc
class __$$_UpdatedTimeModelCopyWithImpl<$Res>
    extends _$UpdatedTimeModelCopyWithImpl<$Res, _$_UpdatedTimeModel>
    implements _$$_UpdatedTimeModelCopyWith<$Res> {
  __$$_UpdatedTimeModelCopyWithImpl(
      _$_UpdatedTimeModel _value, $Res Function(_$_UpdatedTimeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updated = null,
    Object? updatedISO = null,
    Object? updateduk = null,
  }) {
    return _then(_$_UpdatedTimeModel(
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      updatedISO: null == updatedISO
          ? _value.updatedISO
          : updatedISO // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateduk: null == updateduk
          ? _value.updateduk
          : updateduk // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdatedTimeModel implements _UpdatedTimeModel {
  const _$_UpdatedTimeModel(
      {required this.updated,
      required this.updatedISO,
      required this.updateduk});

  factory _$_UpdatedTimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdatedTimeModelFromJson(json);

  @override
  final String updated;
  @override
  final DateTime updatedISO;
  @override
  final String updateduk;

  @override
  String toString() {
    return 'UpdatedTimeModel(updated: $updated, updatedISO: $updatedISO, updateduk: $updateduk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatedTimeModel &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.updatedISO, updatedISO) ||
                other.updatedISO == updatedISO) &&
            (identical(other.updateduk, updateduk) ||
                other.updateduk == updateduk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, updated, updatedISO, updateduk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatedTimeModelCopyWith<_$_UpdatedTimeModel> get copyWith =>
      __$$_UpdatedTimeModelCopyWithImpl<_$_UpdatedTimeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdatedTimeModelToJson(
      this,
    );
  }
}

abstract class _UpdatedTimeModel implements UpdatedTimeModel {
  const factory _UpdatedTimeModel(
      {required final String updated,
      required final DateTime updatedISO,
      required final String updateduk}) = _$_UpdatedTimeModel;

  factory _UpdatedTimeModel.fromJson(Map<String, dynamic> json) =
      _$_UpdatedTimeModel.fromJson;

  @override
  String get updated;
  @override
  DateTime get updatedISO;
  @override
  String get updateduk;
  @override
  @JsonKey(ignore: true)
  _$$_UpdatedTimeModelCopyWith<_$_UpdatedTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
