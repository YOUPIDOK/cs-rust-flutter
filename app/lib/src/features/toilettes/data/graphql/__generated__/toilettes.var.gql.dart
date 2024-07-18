// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/src/api/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'toilettes.var.gql.g.dart';

abstract class GNearToilettesVars
    implements Built<GNearToilettesVars, GNearToilettesVarsBuilder> {
  GNearToilettesVars._();

  factory GNearToilettesVars(
          [void Function(GNearToilettesVarsBuilder b) updates]) =
      _$GNearToilettesVars;

  double get lat;
  double get long;
  double get radiusKm;
  static Serializer<GNearToilettesVars> get serializer =>
      _$gNearToilettesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNearToilettesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNearToilettesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNearToilettesVars.serializer,
        json,
      );
}

abstract class GToilettesVars
    implements Built<GToilettesVars, GToilettesVarsBuilder> {
  GToilettesVars._();

  factory GToilettesVars([void Function(GToilettesVarsBuilder b) updates]) =
      _$GToilettesVars;

  static Serializer<GToilettesVars> get serializer =>
      _$gToilettesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToilettesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToilettesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToilettesVars.serializer,
        json,
      );
}
