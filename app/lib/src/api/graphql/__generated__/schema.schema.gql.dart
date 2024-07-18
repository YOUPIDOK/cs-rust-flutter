// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/src/api/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

abstract class GCreateUser implements Built<GCreateUser, GCreateUserBuilder> {
  GCreateUser._();

  factory GCreateUser([void Function(GCreateUserBuilder b) updates]) =
      _$GCreateUser;

  String get firstname;
  String get lastname;
  String get email;
  GUuid get keycloakUuid;
  static Serializer<GCreateUser> get serializer => _$gCreateUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUser.serializer,
        json,
      );
}

abstract class GLocalDateTime
    implements Built<GLocalDateTime, GLocalDateTimeBuilder> {
  GLocalDateTime._();

  factory GLocalDateTime([String? value]) =>
      _$GLocalDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GLocalDateTime> get serializer =>
      _i2.DefaultScalarSerializer<GLocalDateTime>(
          (Object serialized) => GLocalDateTime((serialized as String?)));
}

abstract class GModifyUser implements Built<GModifyUser, GModifyUserBuilder> {
  GModifyUser._();

  factory GModifyUser([void Function(GModifyUserBuilder b) updates]) =
      _$GModifyUser;

  GUuid get id;
  String get firstname;
  String get lastname;
  String get email;
  GUuid get keycloakUuid;
  static Serializer<GModifyUser> get serializer => _$gModifyUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GModifyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GModifyUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GModifyUser.serializer,
        json,
      );
}

abstract class GUuid implements Built<GUuid, GUuidBuilder> {
  GUuid._();

  factory GUuid([String? value]) =>
      _$GUuid((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GUuid> get serializer => _i2.DefaultScalarSerializer<GUuid>(
      (Object serialized) => GUuid((serialized as String?)));
}

const Map<String, Set<String>> possibleTypesMap = {};
