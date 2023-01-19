import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:geometry_on_map_assignment/model/crop_history_instance.dart';
part 'field.freezed.dart';
part 'field.g.dart';

@freezed
class Field with _$Field {
  const factory Field({
    required int id,
    required int user,
    required String name,
    required String comment,
    required String geom,
    // ignore: non_constant_identifier_names
    required List<CropHistoryInstance> crop_history,
    // ignore: non_constant_identifier_names
    required int area_ag,
    required String status,
    required double hectares,
    required double area,
    required String created,
  }) = _Field;

  factory Field.fromJson(Map<String, Object?> json) => _$FieldFromJson(json);
}
