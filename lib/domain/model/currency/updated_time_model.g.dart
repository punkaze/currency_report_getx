// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdatedTimeModel _$$_UpdatedTimeModelFromJson(Map<String, dynamic> json) =>
    _$_UpdatedTimeModel(
      updated: json['updated'] as String,
      updatedISO: DateTime.parse(json['updatedISO'] as String),
      updateduk: json['updateduk'] as String,
    );

Map<String, dynamic> _$$_UpdatedTimeModelToJson(_$_UpdatedTimeModel instance) =>
    <String, dynamic>{
      'updated': instance.updated,
      'updatedISO': instance.updatedISO.toIso8601String(),
      'updateduk': instance.updateduk,
    };
