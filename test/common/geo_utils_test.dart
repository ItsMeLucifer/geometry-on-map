import 'package:flutter_test/flutter_test.dart';
import 'package:geocore/geocore.dart';
import 'package:geometry_on_map_assignment/common/geo_utils.dart';
import 'package:latlong2/latlong.dart';

void main() {
  group('getCoordinatesFromPolygon', () {
    test('should return List of List of LatLng objects', () {
      const wkt =
          'POLYGON ((30.0 10.0, 40.0 40.0, 20.0 40.0, 10.0 20.0, 30.0 10.0))';
      final geometry = WKT().parserGeographic().parse(wkt);
      final value = GeoUtils.getCoordinatesFromPolygon(geometry);
      expect(value, [
        [
          LatLng(10.0, 30.0),
          LatLng(40.0, 40.0),
          LatLng(40.0, 20.0),
          LatLng(20.0, 10.0),
          LatLng(10.0, 30.0),
        ],
      ]);
    });
    test('should throw an exception', () {
      const wkt = 'POINT (30 10)';
      final geometry = WKT().parserGeographic().parse(wkt);

      expect(() => GeoUtils.getCoordinatesFromPolygon(geometry),
          throwsA(isA<Exception>()));
    });
  });
}
