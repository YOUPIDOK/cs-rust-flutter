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

abstract class GAllToilettesReq
    implements
        Built<GAllToilettesReq, GAllToilettesReqBuilder>,
        _i1.OperationRequest<_i2.GAllToilettesData, _i3.GAllToilettesVars> {
  GAllToilettesReq._();

  factory GAllToilettesReq([void Function(GAllToilettesReqBuilder b) updates]) =
      _$GAllToilettesReq;

  static void _initializeBuilder(GAllToilettesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AllToilettes',
    )
    ..executeOnListen = true;

  @override
  _i3.GAllToilettesVars get vars;
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
  _i2.GAllToilettesData? Function(
    _i2.GAllToilettesData?,
    _i2.GAllToilettesData?,
  )? get updateResult;
  @override
  _i2.GAllToilettesData? get optimisticResponse;
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
  _i2.GAllToilettesData? parseData(Map<String, dynamic> json) =>
      _i2.GAllToilettesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAllToilettesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GAllToilettesData, _i3.GAllToilettesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAllToilettesReq> get serializer =>
      _$gAllToilettesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAllToilettesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllToilettesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAllToilettesReq.serializer,
        json,
      );
}
