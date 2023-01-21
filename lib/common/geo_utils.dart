import 'package:geocore/geocore.dart';
import 'dart:convert';
import 'package:latlong2/latlong.dart';

class GeoUtils {
  static List<List<LatLng>> getCoordinatesFromPolygon(Geometry geometry) {
    if (geometry.typeGeom != Geom.polygon) {
      throw Exception('Provided geometry is not a polygon');
    }
    final string = '[${geometry.toString()}]';
    final decoded = json.decode(string);
    final List<List<LatLng>> result = [];
    for (List part in decoded) {
      final List<LatLng> partResult = [];
      for (List coords in part) {
        final latLng = LatLng(coords.last as double, coords.first as double);
        partResult.add(latLng);
      }
      result.add(partResult);
    }
    return result;
  }
}
