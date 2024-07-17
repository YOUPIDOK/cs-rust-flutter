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

abstract class GAllToilettesData
    implements Built<GAllToilettesData, GAllToilettesDataBuilder> {
  GAllToilettesData._();

  factory GAllToilettesData(
          [void Function(GAllToilettesDataBuilder b) updates]) =
      _$GAllToilettesData;

  static void _initializeBuilder(GAllToilettesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAllToilettesData_getToiletProche> get getToiletProche;
  static Serializer<GAllToilettesData> get serializer =>
      _$gAllToilettesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllToilettesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllToilettesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllToilettesData.serializer,
        json,
      );
}

abstract class GAllToilettesData_getToiletProche
    implements
        Built<GAllToilettesData_getToiletProche,
            GAllToilettesData_getToiletProcheBuilder> {
  GAllToilettesData_getToiletProche._();

  factory GAllToilettesData_getToiletProche(
          [void Function(GAllToilettesData_getToiletProcheBuilder b) updates]) =
      _$GAllToilettesData_getToiletProche;

  static void _initializeBuilder(GAllToilettesData_getToiletProcheBuilder b) =>
      b..G__typename = 'Toilet';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUuid get id;
  double get lat;
  double get long;
  String get name;
  _i2.GUuid get companiesId;
  bool get isMaintenance;
  static Serializer<GAllToilettesData_getToiletProche> get serializer =>
      _$gAllToilettesDataGetToiletProcheSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllToilettesData_getToiletProche.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllToilettesData_getToiletProche? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllToilettesData_getToiletProche.serializer,
        json,
      );
}
