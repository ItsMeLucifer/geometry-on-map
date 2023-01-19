// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Field _$$_FieldFromJson(Map<String, dynamic> json) => _$_Field(
      id: json['id'] as int,
      user: json['user'] as int,
      name: json['name'] as String,
      comment: json['comment'] as String,
      geom: json['geom'] as String,
      crop_history: (json['crop_history'] as List<dynamic>)
          .map((e) => CropHistoryInstance.fromJson(e as Map<String, dynamic>))
          .toList(),
      area_ag: json['area_ag'] as int,
      status: json['status'] as String,
      hectares: (json['hectares'] as num).toDouble(),
      area: (json['area'] as num).toDouble(),
      created: json['created'] as String,
    );

Map<String, dynamic> _$$_FieldToJson(_$_Field instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'name': instance.name,
      'comment': instance.comment,
      'geom': instance.geom,
      'crop_history': instance.crop_history,
      'area_ag': instance.area_ag,
      'status': instance.status,
      'hectares': instance.hectares,
      'area': instance.area,
      'created': instance.created,
    };
