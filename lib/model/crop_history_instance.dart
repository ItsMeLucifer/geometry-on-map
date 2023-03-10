import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'crop_history_instance.freezed.dart';
part 'crop_history_instance.g.dart';

/// A model representing the state of the crop.
/// ```dart
/// const factory CropHistoryInstance({
///    required int id,
///    required Map<String, dynamic> crop,
///    required String label,
///    required String start_date,
///    required String end_date,
///    required double yields,
///    required double? yields_forecast,
///  }) = _CropHistoryInstance;
/// ```
/// Created with freezed and json_serializable.

@freezed
class CropHistoryInstance with _$CropHistoryInstance {
  const factory CropHistoryInstance({
    required int id,
    required Map<String, dynamic> crop,
    required String label,
    // ignore: non_constant_identifier_names
    required String start_date,
    // ignore: non_constant_identifier_names
    required String end_date,
    required double yields,
    // ignore: non_constant_identifier_names
    required double? yields_forecast,
  }) = _CropHistoryInstance;

  factory CropHistoryInstance.fromJson(Map<String, Object?> json) =>
      _$CropHistoryInstanceFromJson(json);
}
