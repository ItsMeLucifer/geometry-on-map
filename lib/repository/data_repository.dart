import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:geometry_on_map_assignment/model/field.dart';

/// The data repository is used to receive local data.
class DataRepository {
  /// It takes a file, converts it to json and then returns an instance of `Field`.
  static Future<Field> getFieldFromFile(String filePath) async {
    final jsonData = await rootBundle.loadString(filePath);
    final json = jsonDecode(jsonData);
    return Field.fromJson(json);
  }
}
