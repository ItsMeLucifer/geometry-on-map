import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:geocore/geocore.dart';
import 'package:geometry_on_map_assignment/model/crop_history_instance.dart';
part 'field.freezed.dart';
part 'field.g.dart';

/// A basic model serving as a representation of the field.
/// ```dart
/// const factory Field({
///    required int id,
///    required int user,
///    required String name,
///    required String comment,
///    required String geom,
///    required List<CropHistoryInstance> crop_history,
///    required int area_ag,
///    required String status,
///    required double hectares,
///    required double area,
///    required String created,
///  }) = _Field;
/// ```
///
/// Created with freezed and json_serializable.
@freezed
class Field with _$Field {
  const Field._();
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

  Geometry getGeometry() => WKT().parserGeographic().parse(geom.split(';')[1]);
}
