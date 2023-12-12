import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_detail_model.freezed.dart';
part 'currency_detail_model.g.dart';

@freezed
class CurrencyDetailModel with _$CurrencyDetailModel {
  const factory CurrencyDetailModel({
    required String code,
    required String symbol,
    required String rate,
    required String description,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'rate_float') @Default(0) double rateFloat,
    // DateTime updatedAt,
  }) = _CurrencyDetailModel;

  factory CurrencyDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDetailModelFromJson(json);
}
