import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:geometry_on_map_assignment/common/debug_utils.dart';
import 'package:geometry_on_map_assignment/model/field.dart';
import 'package:geometry_on_map_assignment/repository/data_repository.dart';
import 'package:latlong2/latlong.dart';

enum FetchStatus {
  unfetched,
  fetching,
  fetched,
}

class MapViewModel extends ChangeNotifier {
  final MapController mapController = MapController();

  final LatLng _startCenter = LatLng(53.20127189893238, 16.39832562876689);
  LatLng get startCenter => _startCenter;

  MapOptions get mapOptions => MapOptions(
        center: startCenter,
        zoom: 9,
        minZoom: 1,
        maxZoom: 15,
        maxBounds: LatLngBounds(
          LatLng(-65, -180.0),
          LatLng(75.0, 180.0),
        ),
        interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
        plugins: [
          MarkerClusterPlugin(),
        ],
      );

  Field? _field = null;
  Field get field => field;
  set field(Field field) {
    _field = field;
    notifyListeners();
  }

  FetchStatus _fieldFetchStatus = FetchStatus.fetched;
  FetchStatus get fieldFetchStatus => _fieldFetchStatus;
  set fieldFetchStatus(FetchStatus newFetchStatus) {
    _fieldFetchStatus = newFetchStatus;
    notifyListeners();
  }

  void fetchFieldData() async {
    fieldFetchStatus = FetchStatus.fetching;
    try {
      final field =
          await DataRepository.getFieldFromFile('assets/data/field.json');
      DebugUtils.printSuccess('Fetched field: $field');
      DebugUtils.printInfo('Geometry data: ${field.getGeometry().toString()}');
      DebugUtils.printInfo('Polygon data: ${field.getPolygon().toString()}');
      this.field = field;
      fieldFetchStatus = FetchStatus.fetched;
    } catch (e) {
      DebugUtils.printError(e.toString());
      fieldFetchStatus = FetchStatus.unfetched;
    }
  }
}
