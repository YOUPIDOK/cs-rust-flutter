// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/src/api/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'toilettes.var.gql.g.dart';

abstract class GAllToilettesVars
    implements Built<GAllToilettesVars, GAllToilettesVarsBuilder> {
  GAllToilettesVars._();

  factory GAllToilettesVars(
          [void Function(GAllToilettesVarsBuilder b) updates]) =
      _$GAllToilettesVars;

  double? get lat;
  double? get long;
  double? get radiusKm;
  static Serializer<GAllToilettesVars> get serializer =>
      _$gAllToilettesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllToilettesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllToilettesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllToilettesVars.serializer,
        json,
      );
}
