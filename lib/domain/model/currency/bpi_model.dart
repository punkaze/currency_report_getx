// ignore_for_file: invalid_annotation_target

import 'package:clean_structure_project/domain/model/currency/currency_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bpi_model.freezed.dart';
part 'bpi_model.g.dart';

@freezed
class BpiModel with _$BpiModel {
  const factory BpiModel({
    @JsonKey(name: 'USD') required CurrencyDetailModel usd,
    @JsonKey(name: 'GBP') required CurrencyDetailModel gbp,
    @JsonKey(name: 'EUR') required CurrencyDetailModel eur,
  }) = _BpiModel;

  factory BpiModel.fromJson(Map<String, dynamic> json) =>
      _$BpiModelFromJson(json);
}
