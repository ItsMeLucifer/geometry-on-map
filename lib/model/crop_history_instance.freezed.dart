// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crop_history_instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CropHistoryInstance _$CropHistoryInstanceFromJson(Map<String, dynamic> json) {
  return _CropHistoryInstance.fromJson(json);
}

/// @nodoc
mixin _$CropHistoryInstance {
  int get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get crop => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get start_date => throw _privateConstructorUsedError;
  String get end_date => throw _privateConstructorUsedError;
  double get yields => throw _privateConstructorUsedError;
  double? get yields_forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CropHistoryInstanceCopyWith<CropHistoryInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropHistoryInstanceCopyWith<$Res> {
  factory $CropHistoryInstanceCopyWith(
          CropHistoryInstance value, $Res Function(CropHistoryInstance) then) =
      _$CropHistoryInstanceCopyWithImpl<$Res, CropHistoryInstance>;
  @useResult
  $Res call(
      {int id,
      Map<String, dynamic> crop,
      String label,
      String start_date,
      String end_date,
      double yields,
      double? yields_forecast});
}

/// @nodoc
class _$CropHistoryInstanceCopyWithImpl<$Res, $Val extends CropHistoryInstance>
    implements $CropHistoryInstanceCopyWith<$Res> {
  _$CropHistoryInstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? crop = null,
    Object? label = null,
    Object? start_date = null,
    Object? end_date = null,
    Object? yields = null,
    Object? yields_forecast = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      crop: null == crop
          ? _value.crop
          : crop // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as double,
      yields_forecast: freezed == yields_forecast
          ? _value.yields_forecast
          : yields_forecast // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CropHistoryInstanceCopyWith<$Res>
    implements $CropHistoryInstanceCopyWith<$Res> {
  factory _$$_CropHistoryInstanceCopyWith(_$_CropHistoryInstance value,
          $Res Function(_$_CropHistoryInstance) then) =
      __$$_CropHistoryInstanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Map<String, dynamic> crop,
      String label,
      String start_date,
      String end_date,
      double yields,
      double? yields_forecast});
}

/// @nodoc
class __$$_CropHistoryInstanceCopyWithImpl<$Res>
    extends _$CropHistoryInstanceCopyWithImpl<$Res, _$_CropHistoryInstance>
    implements _$$_CropHistoryInstanceCopyWith<$Res> {
  __$$_CropHistoryInstanceCopyWithImpl(_$_CropHistoryInstance _value,
      $Res Function(_$_CropHistoryInstance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? crop = null,
    Object? label = null,
    Object? start_date = null,
    Object? end_date = null,
    Object? yields = null,
    Object? yields_forecast = freezed,
  }) {
    return _then(_$_CropHistoryInstance(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      crop: null == crop
          ? _value._crop
          : crop // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as double,
      yields_forecast: freezed == yields_forecast
          ? _value.yields_forecast
          : yields_forecast // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CropHistoryInstance
    with DiagnosticableTreeMixin
    implements _CropHistoryInstance {
  const _$_CropHistoryInstance(
      {required this.id,
      required final Map<String, dynamic> crop,
      required this.label,
      required this.start_date,
      required this.end_date,
      required this.yields,
      required this.yields_forecast})
      : _crop = crop;

  factory _$_CropHistoryInstance.fromJson(Map<String, dynamic> json) =>
      _$$_CropHistoryInstanceFromJson(json);

  @override
  final int id;
  final Map<String, dynamic> _crop;
  @override
  Map<String, dynamic> get crop {
    if (_crop is EqualUnmodifiableMapView) return _crop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_crop);
  }

  @override
  final String label;
  @override
  final String start_date;
  @override
  final String end_date;
  @override
  final double yields;
  @override
  final double? yields_forecast;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CropHistoryInstance(id: $id, crop: $crop, label: $label, start_date: $start_date, end_date: $end_date, yields: $yields, yields_forecast: $yields_forecast)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CropHistoryInstance'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('crop', crop))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('start_date', start_date))
      ..add(DiagnosticsProperty('end_date', end_date))
      ..add(DiagnosticsProperty('yields', yields))
      ..add(DiagnosticsProperty('yields_forecast', yields_forecast));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CropHistoryInstance &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._crop, _crop) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.yields, yields) || other.yields == yields) &&
            (identical(other.yields_forecast, yields_forecast) ||
                other.yields_forecast == yields_forecast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_crop),
      label,
      start_date,
      end_date,
      yields,
      yields_forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CropHistoryInstanceCopyWith<_$_CropHistoryInstance> get copyWith =>
      __$$_CropHistoryInstanceCopyWithImpl<_$_CropHistoryInstance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CropHistoryInstanceToJson(
      this,
    );
  }
}

abstract class _CropHistoryInstance implements CropHistoryInstance {
  const factory _CropHistoryInstance(
      {required final int id,
      required final Map<String, dynamic> crop,
      required final String label,
      required final String start_date,
      required final String end_date,
      required final double yields,
      required final double? yields_forecast}) = _$_CropHistoryInstance;

  factory _CropHistoryInstance.fromJson(Map<String, dynamic> json) =
      _$_CropHistoryInstance.fromJson;

  @override
  int get id;
  @override
  Map<String, dynamic> get crop;
  @override
  String get label;
  @override
  String get start_date;
  @override
  String get end_date;
  @override
  double get yields;
  @override
  double? get yields_forecast;
  @override
  @JsonKey(ignore: true)
  _$$_CropHistoryInstanceCopyWith<_$_CropHistoryInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
