import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

BuiltList<GToilettesData_getToilets> toilettesInCoordinateBounds(
  BuiltList<GToilettesData_getToilets> toilettes,
  CoordinateBounds coordinateBounds,
) {
  return toilettes.where((toilette) {
    final northeast = coordinateBounds.northeast;
    final southwest = coordinateBounds.southwest;
    return toilette.lat <= northeast.coordinates.lat &&
        toilette.lat >= southwest.coordinates.lat &&
        toilette.long <= northeast.coordinates.lng &&
        toilette.long >= southwest.coordinates.lng;
  }).toBuiltList();
}
