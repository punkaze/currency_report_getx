// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyResponseModel _$$_CurrencyResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CurrencyResponseModel(
      time: UpdatedTimeModel.fromJson(json['time'] as Map<String, dynamic>),
      disclaimer: json['disclaimer'] as String,
      chartName: json['chartName'] as String,
      bpi: BpiModel.fromJson(json['bpi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrencyResponseModelToJson(
        _$_CurrencyResponseModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'disclaimer': instance.disclaimer,
      'chartName': instance.chartName,
      'bpi': instance.bpi,
    };
