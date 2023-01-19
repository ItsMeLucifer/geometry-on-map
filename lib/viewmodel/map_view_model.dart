import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';

class MapViewModel extends ChangeNotifier {
  final MapController mapController = MapController();

  LatLng _startCenter = LatLng(0, 0);
  LatLng get startCenter => _startCenter;

  MapOptions get mapOptions => MapOptions(
        center: startCenter,
        zoom: 6,
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
}
