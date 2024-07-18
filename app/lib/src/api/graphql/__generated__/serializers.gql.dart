// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:app/src/api/graphql/__generated__/schema.schema.gql.dart'
    show GCreateUser, GLocalDateTime, GModifyUser, GUuid;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart'
    show
        GNearToilettesData,
        GNearToilettesData_getToiletProche,
        GToilettesData,
        GToilettesData_getToilets;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.req.gql.dart'
    show GNearToilettesReq, GToilettesReq;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.var.gql.dart'
    show GNearToilettesVars, GToilettesVars;
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
  GCreateUser,
  GLocalDateTime,
  GModifyUser,
  GNearToilettesData,
  GNearToilettesData_getToiletProche,
  GNearToilettesReq,
  GNearToilettesVars,
  GToilettesData,
  GToilettesData_getToilets,
  GToilettesReq,
  GToilettesVars,
  GUuid,
])
final Serializers serializers = _serializersBuilder.build();
