// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop_history_instance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CropHistoryInstance _$$_CropHistoryInstanceFromJson(
        Map<String, dynamic> json) =>
    _$_CropHistoryInstance(
      id: json['id'] as int,
      crop: json['crop'] as Map<String, dynamic>,
      label: json['label'] as String,
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      yields: (json['yields'] as num).toDouble(),
      yields_forecast: (json['yields_forecast'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CropHistoryInstanceToJson(
        _$_CropHistoryInstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'crop': instance.crop,
      'label': instance.label,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'yields': instance.yields,
      'yields_forecast': instance.yields_forecast,
    };
