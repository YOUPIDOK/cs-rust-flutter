// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUser> _$gCreateUserSerializer = new _$GCreateUserSerializer();
Serializer<GModifyUser> _$gModifyUserSerializer = new _$GModifyUserSerializer();

class _$GCreateUserSerializer implements StructuredSerializer<GCreateUser> {
  @override
  final Iterable<Type> types = const [GCreateUser, _$GCreateUser];
  @override
  final String wireName = 'GCreateUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firstname',
      serializers.serialize(object.firstname,
          specifiedType: const FullType(String)),
      'lastname',
      serializers.serialize(object.lastname,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'keycloakUuid',
      serializers.serialize(object.keycloakUuid,
          specifiedType: const FullType(GUuid)),
    ];

    return result;
  }

  @override
  GCreateUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'keycloakUuid':
          result.keycloakUuid.replace(serializers.deserialize(value,
              specifiedType: const FullType(GUuid))! as GUuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GModifyUserSerializer implements StructuredSerializer<GModifyUser> {
  @override
  final Iterable<Type> types = const [GModifyUser, _$GModifyUser];
  @override
  final String wireName = 'GModifyUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GModifyUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(GUuid)),
      'firstname',
      serializers.serialize(object.firstname,
          specifiedType: const FullType(String)),
      'lastname',
      serializers.serialize(object.lastname,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'keycloakUuid',
      serializers.serialize(object.keycloakUuid,
          specifiedType: const FullType(GUuid)),
    ];

    return result;
  }

  @override
  GModifyUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GModifyUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(GUuid))! as GUuid);
          break;
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'keycloakUuid':
          result.keycloakUuid.replace(serializers.deserialize(value,
              specifiedType: const FullType(GUuid))! as GUuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUser extends GCreateUser {
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final GUuid keycloakUuid;

  factory _$GCreateUser([void Function(GCreateUserBuilder)? updates]) =>
      (new GCreateUserBuilder()..update(updates))._build();

  _$GCreateUser._(
      {required this.firstname,
      required this.lastname,
      required this.email,
      required this.keycloakUuid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstname, r'GCreateUser', 'firstname');
    BuiltValueNullFieldError.checkNotNull(lastname, r'GCreateUser', 'lastname');
    BuiltValueNullFieldError.checkNotNull(email, r'GCreateUser', 'email');
    BuiltValueNullFieldError.checkNotNull(
        keycloakUuid, r'GCreateUser', 'keycloakUuid');
  }

  @override
  GCreateUser rebuild(void Function(GCreateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserBuilder toBuilder() => new GCreateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUser &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        email == other.email &&
        keycloakUuid == other.keycloakUuid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, keycloakUuid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUser')
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('email', email)
          ..add('keycloakUuid', keycloakUuid))
        .toString();
  }
}

class GCreateUserBuilder implements Builder<GCreateUser, GCreateUserBuilder> {
  _$GCreateUser? _$v;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GUuidBuilder? _keycloakUuid;
  GUuidBuilder get keycloakUuid => _$this._keycloakUuid ??= new GUuidBuilder();
  set keycloakUuid(GUuidBuilder? keycloakUuid) =>
      _$this._keycloakUuid = keycloakUuid;

  GCreateUserBuilder();

  GCreateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _email = $v.email;
      _keycloakUuid = $v.keycloakUuid.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUser;
  }

  @override
  void update(void Function(GCreateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUser build() => _build();

  _$GCreateUser _build() {
    _$GCreateUser _$result;
    try {
      _$result = _$v ??
          new _$GCreateUser._(
              firstname: BuiltValueNullFieldError.checkNotNull(
                  firstname, r'GCreateUser', 'firstname'),
              lastname: BuiltValueNullFieldError.checkNotNull(
                  lastname, r'GCreateUser', 'lastname'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'GCreateUser', 'email'),
              keycloakUuid: keycloakUuid.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keycloakUuid';
        keycloakUuid.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLocalDateTime extends GLocalDateTime {
  @override
  final String value;

  factory _$GLocalDateTime([void Function(GLocalDateTimeBuilder)? updates]) =>
      (new GLocalDateTimeBuilder()..update(updates))._build();

  _$GLocalDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GLocalDateTime', 'value');
  }

  @override
  GLocalDateTime rebuild(void Function(GLocalDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocalDateTimeBuilder toBuilder() =>
      new GLocalDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocalDateTime && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocalDateTime')..add('value', value))
        .toString();
  }
}

class GLocalDateTimeBuilder
    implements Builder<GLocalDateTime, GLocalDateTimeBuilder> {
  _$GLocalDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GLocalDateTimeBuilder();

  GLocalDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocalDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocalDateTime;
  }

  @override
  void update(void Function(GLocalDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocalDateTime build() => _build();

  _$GLocalDateTime _build() {
    final _$result = _$v ??
        new _$GLocalDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GLocalDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GModifyUser extends GModifyUser {
  @override
  final GUuid id;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final GUuid keycloakUuid;

  factory _$GModifyUser([void Function(GModifyUserBuilder)? updates]) =>
      (new GModifyUserBuilder()..update(updates))._build();

  _$GModifyUser._(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.keycloakUuid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GModifyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        firstname, r'GModifyUser', 'firstname');
    BuiltValueNullFieldError.checkNotNull(lastname, r'GModifyUser', 'lastname');
    BuiltValueNullFieldError.checkNotNull(email, r'GModifyUser', 'email');
    BuiltValueNullFieldError.checkNotNull(
        keycloakUuid, r'GModifyUser', 'keycloakUuid');
  }

  @override
  GModifyUser rebuild(void Function(GModifyUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModifyUserBuilder toBuilder() => new GModifyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModifyUser &&
        id == other.id &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        email == other.email &&
        keycloakUuid == other.keycloakUuid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, keycloakUuid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModifyUser')
          ..add('id', id)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('email', email)
          ..add('keycloakUuid', keycloakUuid))
        .toString();
  }
}

class GModifyUserBuilder implements Builder<GModifyUser, GModifyUserBuilder> {
  _$GModifyUser? _$v;

  GUuidBuilder? _id;
  GUuidBuilder get id => _$this._id ??= new GUuidBuilder();
  set id(GUuidBuilder? id) => _$this._id = id;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GUuidBuilder? _keycloakUuid;
  GUuidBuilder get keycloakUuid => _$this._keycloakUuid ??= new GUuidBuilder();
  set keycloakUuid(GUuidBuilder? keycloakUuid) =>
      _$this._keycloakUuid = keycloakUuid;

  GModifyUserBuilder();

  GModifyUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id.toBuilder();
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _email = $v.email;
      _keycloakUuid = $v.keycloakUuid.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GModifyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModifyUser;
  }

  @override
  void update(void Function(GModifyUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GModifyUser build() => _build();

  _$GModifyUser _build() {
    _$GModifyUser _$result;
    try {
      _$result = _$v ??
          new _$GModifyUser._(
              id: id.build(),
              firstname: BuiltValueNullFieldError.checkNotNull(
                  firstname, r'GModifyUser', 'firstname'),
              lastname: BuiltValueNullFieldError.checkNotNull(
                  lastname, r'GModifyUser', 'lastname'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'GModifyUser', 'email'),
              keycloakUuid: keycloakUuid.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'keycloakUuid';
        keycloakUuid.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GModifyUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUuid extends GUuid {
  @override
  final String value;

  factory _$GUuid([void Function(GUuidBuilder)? updates]) =>
      (new GUuidBuilder()..update(updates))._build();

  _$GUuid._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GUuid', 'value');
  }

  @override
  GUuid rebuild(void Function(GUuidBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUuidBuilder toBuilder() => new GUuidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUuid && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUuid')..add('value', value))
        .toString();
  }
}

class GUuidBuilder implements Builder<GUuid, GUuidBuilder> {
  _$GUuid? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GUuidBuilder();

  GUuidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUuid other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUuid;
  }

  @override
  void update(void Function(GUuidBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUuid build() => _build();

  _$GUuid _build() {
    final _$result = _$v ??
        new _$GUuid._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GUuid', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
