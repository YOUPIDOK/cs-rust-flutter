// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/src/api/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:app/src/api/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'toilettes.data.gql.g.dart';

abstract class GNearToilettesData
    implements Built<GNearToilettesData, GNearToilettesDataBuilder> {
  GNearToilettesData._();

  factory GNearToilettesData(
          [void Function(GNearToilettesDataBuilder b) updates]) =
      _$GNearToilettesData;

  static void _initializeBuilder(GNearToilettesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GNearToilettesData_getToiletProche> get getToiletProche;
  static Serializer<GNearToilettesData> get serializer =>
      _$gNearToilettesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNearToilettesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNearToilettesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNearToilettesData.serializer,
        json,
      );
}

abstract class GNearToilettesData_getToiletProche
    implements
        Built<GNearToilettesData_getToiletProche,
            GNearToilettesData_getToiletProcheBuilder> {
  GNearToilettesData_getToiletProche._();

  factory GNearToilettesData_getToiletProche(
      [void Function(GNearToilettesData_getToiletProcheBuilder b)
          updates]) = _$GNearToilettesData_getToiletProche;

  static void _initializeBuilder(GNearToilettesData_getToiletProcheBuilder b) =>
      b..G__typename = 'Toilet';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUuid get id;
  double get lat;
  double get long;
  String get name;
  _i2.GUuid get companiesId;
  bool get isMaintenance;
  static Serializer<GNearToilettesData_getToiletProche> get serializer =>
      _$gNearToilettesDataGetToiletProcheSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNearToilettesData_getToiletProche.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNearToilettesData_getToiletProche? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNearToilettesData_getToiletProche.serializer,
        json,
      );
}

abstract class GToilettesData
    implements Built<GToilettesData, GToilettesDataBuilder> {
  GToilettesData._();

  factory GToilettesData([void Function(GToilettesDataBuilder b) updates]) =
      _$GToilettesData;

  static void _initializeBuilder(GToilettesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GToilettesData_getToilets> get getToilets;
  static Serializer<GToilettesData> get serializer =>
      _$gToilettesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToilettesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToilettesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToilettesData.serializer,
        json,
      );
}

abstract class GToilettesData_getToilets
    implements
        Built<GToilettesData_getToilets, GToilettesData_getToiletsBuilder> {
  GToilettesData_getToilets._();

  factory GToilettesData_getToilets(
          [void Function(GToilettesData_getToiletsBuilder b) updates]) =
      _$GToilettesData_getToilets;

  static void _initializeBuilder(GToilettesData_getToiletsBuilder b) =>
      b..G__typename = 'Toilet';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUuid get id;
  double get lat;
  double get long;
  String get name;
  _i2.GUuid get companiesId;
  bool get isMaintenance;
  static Serializer<GToilettesData_getToilets> get serializer =>
      _$gToilettesDataGetToiletsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToilettesData_getToilets.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToilettesData_getToilets? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToilettesData_getToilets.serializer,
        json,
      );
}
