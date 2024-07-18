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

abstract class GupdateDoorStateData
    implements Built<GupdateDoorStateData, GupdateDoorStateDataBuilder> {
  GupdateDoorStateData._();

  factory GupdateDoorStateData(
          [void Function(GupdateDoorStateDataBuilder b) updates]) =
      _$GupdateDoorStateData;

  static void _initializeBuilder(GupdateDoorStateDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdateDoorStateData_updateDoorState get updateDoorState;
  static Serializer<GupdateDoorStateData> get serializer =>
      _$gupdateDoorStateDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateDoorStateData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateDoorStateData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateDoorStateData.serializer,
        json,
      );
}

abstract class GupdateDoorStateData_updateDoorState
    implements
        Built<GupdateDoorStateData_updateDoorState,
            GupdateDoorStateData_updateDoorStateBuilder> {
  GupdateDoorStateData_updateDoorState._();

  factory GupdateDoorStateData_updateDoorState(
      [void Function(GupdateDoorStateData_updateDoorStateBuilder b)
          updates]) = _$GupdateDoorStateData_updateDoorState;

  static void _initializeBuilder(
          GupdateDoorStateData_updateDoorStateBuilder b) =>
      b..G__typename = 'Toilet';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUuid get id;
  bool get isMaintenance;
  bool get doorIsOpen;
  bool get isLocked;
  static Serializer<GupdateDoorStateData_updateDoorState> get serializer =>
      _$gupdateDoorStateDataUpdateDoorStateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateDoorStateData_updateDoorState.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateDoorStateData_updateDoorState? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateDoorStateData_updateDoorState.serializer,
        json,
      );
}

abstract class GtoggleLockStateData
    implements Built<GtoggleLockStateData, GtoggleLockStateDataBuilder> {
  GtoggleLockStateData._();

  factory GtoggleLockStateData(
          [void Function(GtoggleLockStateDataBuilder b) updates]) =
      _$GtoggleLockStateData;

  static void _initializeBuilder(GtoggleLockStateDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GtoggleLockStateData_toggleLockState get toggleLockState;
  static Serializer<GtoggleLockStateData> get serializer =>
      _$gtoggleLockStateDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtoggleLockStateData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtoggleLockStateData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtoggleLockStateData.serializer,
        json,
      );
}

abstract class GtoggleLockStateData_toggleLockState
    implements
        Built<GtoggleLockStateData_toggleLockState,
            GtoggleLockStateData_toggleLockStateBuilder> {
  GtoggleLockStateData_toggleLockState._();

  factory GtoggleLockStateData_toggleLockState(
      [void Function(GtoggleLockStateData_toggleLockStateBuilder b)
          updates]) = _$GtoggleLockStateData_toggleLockState;

  static void _initializeBuilder(
          GtoggleLockStateData_toggleLockStateBuilder b) =>
      b..G__typename = 'Toilet';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUuid get id;
  bool get isMaintenance;
  bool get doorIsOpen;
  bool get isLocked;
  static Serializer<GtoggleLockStateData_toggleLockState> get serializer =>
      _$gtoggleLockStateDataToggleLockStateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtoggleLockStateData_toggleLockState.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtoggleLockStateData_toggleLockState? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtoggleLockStateData_toggleLockState.serializer,
        json,
      );
}

abstract class GToiletteSubscriptionData
    implements
        Built<GToiletteSubscriptionData, GToiletteSubscriptionDataBuilder> {
  GToiletteSubscriptionData._();

  factory GToiletteSubscriptionData(
          [void Function(GToiletteSubscriptionDataBuilder b) updates]) =
      _$GToiletteSubscriptionData;

  static void _initializeBuilder(GToiletteSubscriptionDataBuilder b) =>
      b..G__typename = 'Subscription';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToiletteSubscriptionData_doorStateUpdated get doorStateUpdated;
  static Serializer<GToiletteSubscriptionData> get serializer =>
      _$gToiletteSubscriptionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToiletteSubscriptionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToiletteSubscriptionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToiletteSubscriptionData.serializer,
        json,
      );
}

abstract class GToiletteSubscriptionData_doorStateUpdated
    implements
        Built<GToiletteSubscriptionData_doorStateUpdated,
            GToiletteSubscriptionData_doorStateUpdatedBuilder> {
  GToiletteSubscriptionData_doorStateUpdated._();

  factory GToiletteSubscriptionData_doorStateUpdated(
      [void Function(GToiletteSubscriptionData_doorStateUpdatedBuilder b)
          updates]) = _$GToiletteSubscriptionData_doorStateUpdated;

  static void _initializeBuilder(
          GToiletteSubscriptionData_doorStateUpdatedBuilder b) =>
      b..G__typename = 'Toilet';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUuid get id;
  String get name;
  bool get doorIsOpen;
  bool get isLocked;
  bool get isMaintenance;
  static Serializer<GToiletteSubscriptionData_doorStateUpdated>
      get serializer => _$gToiletteSubscriptionDataDoorStateUpdatedSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToiletteSubscriptionData_doorStateUpdated.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToiletteSubscriptionData_doorStateUpdated? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToiletteSubscriptionData_doorStateUpdated.serializer,
        json,
      );
}
