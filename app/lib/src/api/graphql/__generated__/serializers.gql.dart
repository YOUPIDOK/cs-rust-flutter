// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:app/src/api/graphql/__generated__/schema.schema.gql.dart'
    show
        GCreateComment,
        GCreateUser,
        GLocalDateTime,
        GModifyUser,
        GUserGender,
        GUuid;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart'
    show
        GNearToilettesData,
        GNearToilettesData_getToiletProche,
        GToiletteSubscriptionData,
        GToiletteSubscriptionData_doorStateUpdated,
        GToilettesData,
        GToilettesData_getToilets,
        GgetCommentsByToiletData,
        GgetCommentsByToiletData_getCommentsByToilet,
        GtoggleLockStateData,
        GtoggleLockStateData_toggleLockState,
        GtoiletteCreateCommentData,
        GtoiletteCreateCommentData_createComment,
        GupdateDoorStateData,
        GupdateDoorStateData_updateDoorState;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.req.gql.dart'
    show
        GNearToilettesReq,
        GToiletteSubscriptionReq,
        GToilettesReq,
        GgetCommentsByToiletReq,
        GtoggleLockStateReq,
        GtoiletteCreateCommentReq,
        GupdateDoorStateReq;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.var.gql.dart'
    show
        GNearToilettesVars,
        GToiletteSubscriptionVars,
        GToilettesVars,
        GgetCommentsByToiletVars,
        GtoggleLockStateVars,
        GtoiletteCreateCommentVars,
        GupdateDoorStateVars;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateComment,
  GCreateUser,
  GLocalDateTime,
  GModifyUser,
  GNearToilettesData,
  GNearToilettesData_getToiletProche,
  GNearToilettesReq,
  GNearToilettesVars,
  GToiletteSubscriptionData,
  GToiletteSubscriptionData_doorStateUpdated,
  GToiletteSubscriptionReq,
  GToiletteSubscriptionVars,
  GToilettesData,
  GToilettesData_getToilets,
  GToilettesReq,
  GToilettesVars,
  GUserGender,
  GUuid,
  GgetCommentsByToiletData,
  GgetCommentsByToiletData_getCommentsByToilet,
  GgetCommentsByToiletReq,
  GgetCommentsByToiletVars,
  GtoggleLockStateData,
  GtoggleLockStateData_toggleLockState,
  GtoggleLockStateReq,
  GtoggleLockStateVars,
  GtoiletteCreateCommentData,
  GtoiletteCreateCommentData_createComment,
  GtoiletteCreateCommentReq,
  GtoiletteCreateCommentVars,
  GupdateDoorStateData,
  GupdateDoorStateData_updateDoorState,
  GupdateDoorStateReq,
  GupdateDoorStateVars,
])
final Serializers serializers = _serializersBuilder.build();
