import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:geometry_on_map_assignment/model/field.dart';
import 'package:geometry_on_map_assignment/repository/data_repository.dart';
import 'package:latlong2/latlong.dart';

class MapViewModel extends ChangeNotifier {
  final MapController mapController = MapController();

  final LatLng _startCenter = LatLng(53.20127189893238, 16.39832562876689);
  LatLng get startCenter => _startCenter;

  MapOptions get mapOptions => MapOptions(
        center: startCenter,
        zoom: 14,
        minZoom: 6,
        maxZoom: 18,
        maxBounds: LatLngBounds(
          LatLng(-65, -180.0),
          LatLng(75.0, 180.0),
        ),
        interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
        plugins: [
          MarkerClusterPlugin(),
        ],
      );

  Future<Field> fetchFieldData() async {
    try {
      final field =
          await DataRepository.getFieldFromFile('assets/data/field.json');
      return field;
    } catch (e) {
      throw Exception('An error occured while fetching field data: $e');
    }
  }
}
