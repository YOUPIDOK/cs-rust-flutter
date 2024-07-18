// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/src/api/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.ast.gql.dart'
    as _i5;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart'
    as _i2;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'toilettes.req.gql.g.dart';

abstract class GNearToilettesReq
    implements
        Built<GNearToilettesReq, GNearToilettesReqBuilder>,
        _i1.OperationRequest<_i2.GNearToilettesData, _i3.GNearToilettesVars> {
  GNearToilettesReq._();

  factory GNearToilettesReq(
          [void Function(GNearToilettesReqBuilder b) updates]) =
      _$GNearToilettesReq;

  static void _initializeBuilder(GNearToilettesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'NearToilettes',
    )
    ..executeOnListen = true;

  @override
  _i3.GNearToilettesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GNearToilettesData? Function(
    _i2.GNearToilettesData?,
    _i2.GNearToilettesData?,
  )? get updateResult;
  @override
  _i2.GNearToilettesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GNearToilettesData? parseData(Map<String, dynamic> json) =>
      _i2.GNearToilettesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GNearToilettesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GNearToilettesData, _i3.GNearToilettesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GNearToilettesReq> get serializer =>
      _$gNearToilettesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GNearToilettesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNearToilettesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GNearToilettesReq.serializer,
        json,
      );
}

abstract class GToilettesReq
    implements
        Built<GToilettesReq, GToilettesReqBuilder>,
        _i1.OperationRequest<_i2.GToilettesData, _i3.GToilettesVars> {
  GToilettesReq._();

  factory GToilettesReq([void Function(GToilettesReqBuilder b) updates]) =
      _$GToilettesReq;

  static void _initializeBuilder(GToilettesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Toilettes',
    )
    ..executeOnListen = true;

  @override
  _i3.GToilettesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GToilettesData? Function(
    _i2.GToilettesData?,
    _i2.GToilettesData?,
  )? get updateResult;
  @override
  _i2.GToilettesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GToilettesData? parseData(Map<String, dynamic> json) =>
      _i2.GToilettesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GToilettesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GToilettesData, _i3.GToilettesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GToilettesReq> get serializer => _$gToilettesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GToilettesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToilettesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GToilettesReq.serializer,
        json,
      );
}

abstract class GupdateDoorStateReq
    implements
        Built<GupdateDoorStateReq, GupdateDoorStateReqBuilder>,
        _i1
        .OperationRequest<_i2.GupdateDoorStateData, _i3.GupdateDoorStateVars> {
  GupdateDoorStateReq._();

  factory GupdateDoorStateReq(
          [void Function(GupdateDoorStateReqBuilder b) updates]) =
      _$GupdateDoorStateReq;

  static void _initializeBuilder(GupdateDoorStateReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'updateDoorState',
    )
    ..executeOnListen = true;

  @override
  _i3.GupdateDoorStateVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GupdateDoorStateData? Function(
    _i2.GupdateDoorStateData?,
    _i2.GupdateDoorStateData?,
  )? get updateResult;
  @override
  _i2.GupdateDoorStateData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GupdateDoorStateData? parseData(Map<String, dynamic> json) =>
      _i2.GupdateDoorStateData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GupdateDoorStateData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GupdateDoorStateData, _i3.GupdateDoorStateVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GupdateDoorStateReq> get serializer =>
      _$gupdateDoorStateReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GupdateDoorStateReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateDoorStateReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GupdateDoorStateReq.serializer,
        json,
      );
}

abstract class GtoggleLockStateReq
    implements
        Built<GtoggleLockStateReq, GtoggleLockStateReqBuilder>,
        _i1
        .OperationRequest<_i2.GtoggleLockStateData, _i3.GtoggleLockStateVars> {
  GtoggleLockStateReq._();

  factory GtoggleLockStateReq(
          [void Function(GtoggleLockStateReqBuilder b) updates]) =
      _$GtoggleLockStateReq;

  static void _initializeBuilder(GtoggleLockStateReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'toggleLockState',
    )
    ..executeOnListen = true;

  @override
  _i3.GtoggleLockStateVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GtoggleLockStateData? Function(
    _i2.GtoggleLockStateData?,
    _i2.GtoggleLockStateData?,
  )? get updateResult;
  @override
  _i2.GtoggleLockStateData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GtoggleLockStateData? parseData(Map<String, dynamic> json) =>
      _i2.GtoggleLockStateData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GtoggleLockStateData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GtoggleLockStateData, _i3.GtoggleLockStateVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GtoggleLockStateReq> get serializer =>
      _$gtoggleLockStateReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GtoggleLockStateReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtoggleLockStateReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GtoggleLockStateReq.serializer,
        json,
      );
}

abstract class GToiletteSubscriptionReq
    implements
        Built<GToiletteSubscriptionReq, GToiletteSubscriptionReqBuilder>,
        _i1.OperationRequest<_i2.GToiletteSubscriptionData,
            _i3.GToiletteSubscriptionVars> {
  GToiletteSubscriptionReq._();

  factory GToiletteSubscriptionReq(
          [void Function(GToiletteSubscriptionReqBuilder b) updates]) =
      _$GToiletteSubscriptionReq;

  static void _initializeBuilder(GToiletteSubscriptionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ToiletteSubscription',
    )
    ..executeOnListen = true;

  @override
  _i3.GToiletteSubscriptionVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GToiletteSubscriptionData? Function(
    _i2.GToiletteSubscriptionData?,
    _i2.GToiletteSubscriptionData?,
  )? get updateResult;
  @override
  _i2.GToiletteSubscriptionData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GToiletteSubscriptionData? parseData(Map<String, dynamic> json) =>
      _i2.GToiletteSubscriptionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GToiletteSubscriptionData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GToiletteSubscriptionData,
      _i3.GToiletteSubscriptionVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GToiletteSubscriptionReq> get serializer =>
      _$gToiletteSubscriptionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GToiletteSubscriptionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToiletteSubscriptionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GToiletteSubscriptionReq.serializer,
        json,
      );
}
