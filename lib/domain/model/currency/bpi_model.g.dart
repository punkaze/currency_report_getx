// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bpi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BpiModel _$$_BpiModelFromJson(Map<String, dynamic> json) => _$_BpiModel(
      usd: CurrencyDetailModel.fromJson(json['USD'] as Map<String, dynamic>),
      gbp: CurrencyDetailModel.fromJson(json['GBP'] as Map<String, dynamic>),
      eur: CurrencyDetailModel.fromJson(json['EUR'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BpiModelToJson(_$_BpiModel instance) =>
    <String, dynamic>{
      'USD': instance.usd,
      'GBP': instance.gbp,
      'EUR': instance.eur,
    };
