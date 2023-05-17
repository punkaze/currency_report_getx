import 'package:freezed_annotation/freezed_annotation.dart';

part 'updated_time_model.freezed.dart';
part 'updated_time_model.g.dart';

@freezed
class UpdatedTimeModel with _$UpdatedTimeModel {
  const factory UpdatedTimeModel({
    required String updated,
    required DateTime updatedISO,
    required String updateduk,
  }) = _UpdatedTimeModel;

  factory UpdatedTimeModel.fromJson(Map<String, dynamic> json) =>
      _$UpdatedTimeModelFromJson(json);
}
