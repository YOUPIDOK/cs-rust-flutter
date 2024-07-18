// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:app/src/api/graphql/__generated__/schema.schema.gql.dart'
    show GCreateUser, GLocalDateTime, GModifyUser, GUuid;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.data.gql.dart'
    show GAllToilettesData, GAllToilettesData_getToiletProche;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.req.gql.dart'
    show GAllToilettesReq;
import 'package:app/src/features/toilettes/data/graphql/__generated__/toilettes.var.gql.dart'
    show GAllToilettesVars;
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
  GAllToilettesData,
  GAllToilettesData_getToiletProche,
  GAllToilettesReq,
  GAllToilettesVars,
  GCreateUser,
  GLocalDateTime,
  GModifyUser,
  GUuid,
])
final Serializers serializers = _serializersBuilder.build();
