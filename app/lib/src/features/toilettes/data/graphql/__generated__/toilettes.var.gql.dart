// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/src/api/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
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

abstract class GgetCommentsByToiletVars
    implements
        Built<GgetCommentsByToiletVars, GgetCommentsByToiletVarsBuilder> {
  GgetCommentsByToiletVars._();

  factory GgetCommentsByToiletVars(
          [void Function(GgetCommentsByToiletVarsBuilder b) updates]) =
      _$GgetCommentsByToiletVars;

  _i2.GUuid get toiletIdFilter;
  static Serializer<GgetCommentsByToiletVars> get serializer =>
      _$ggetCommentsByToiletVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCommentsByToiletVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCommentsByToiletVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCommentsByToiletVars.serializer,
        json,
      );
}

abstract class GupdateDoorStateVars
    implements Built<GupdateDoorStateVars, GupdateDoorStateVarsBuilder> {
  GupdateDoorStateVars._();

  factory GupdateDoorStateVars(
          [void Function(GupdateDoorStateVarsBuilder b) updates]) =
      _$GupdateDoorStateVars;

  _i2.GUuid get id;
  static Serializer<GupdateDoorStateVars> get serializer =>
      _$gupdateDoorStateVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateDoorStateVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateDoorStateVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateDoorStateVars.serializer,
        json,
      );
}

abstract class GtoggleLockStateVars
    implements Built<GtoggleLockStateVars, GtoggleLockStateVarsBuilder> {
  GtoggleLockStateVars._();

  factory GtoggleLockStateVars(
          [void Function(GtoggleLockStateVarsBuilder b) updates]) =
      _$GtoggleLockStateVars;

  _i2.GUuid get id;
  static Serializer<GtoggleLockStateVars> get serializer =>
      _$gtoggleLockStateVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtoggleLockStateVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtoggleLockStateVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtoggleLockStateVars.serializer,
        json,
      );
}

abstract class GtoiletteCreateCommentVars
    implements
        Built<GtoiletteCreateCommentVars, GtoiletteCreateCommentVarsBuilder> {
  GtoiletteCreateCommentVars._();

  factory GtoiletteCreateCommentVars(
          [void Function(GtoiletteCreateCommentVarsBuilder b) updates]) =
      _$GtoiletteCreateCommentVars;

  _i2.GCreateComment get input;
  static Serializer<GtoiletteCreateCommentVars> get serializer =>
      _$gtoiletteCreateCommentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtoiletteCreateCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtoiletteCreateCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtoiletteCreateCommentVars.serializer,
        json,
      );
}

abstract class GToiletteSubscriptionVars
    implements
        Built<GToiletteSubscriptionVars, GToiletteSubscriptionVarsBuilder> {
  GToiletteSubscriptionVars._();

  factory GToiletteSubscriptionVars(
          [void Function(GToiletteSubscriptionVarsBuilder b) updates]) =
      _$GToiletteSubscriptionVars;

  _i2.GUuid get id;
  static Serializer<GToiletteSubscriptionVars> get serializer =>
      _$gToiletteSubscriptionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToiletteSubscriptionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToiletteSubscriptionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToiletteSubscriptionVars.serializer,
        json,
      );
}
