// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyDetailModel _$$_CurrencyDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_CurrencyDetailModel(
      code: json['code'] as String,
      symbol: json['symbol'] as String,
      rate: json['rate'] as String,
      description: json['description'] as String,
      rateFloat: (json['rate_float'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_CurrencyDetailModelToJson(
        _$_CurrencyDetailModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'symbol': instance.symbol,
      'rate': instance.rate,
      'description': instance.description,
      'rate_float': instance.rateFloat,
    };
