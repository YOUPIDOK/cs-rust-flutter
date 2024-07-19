// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GUserGender _$gUserGenderMALE = const GUserGender._('MALE');
const GUserGender _$gUserGenderFEMALE = const GUserGender._('FEMALE');
const GUserGender _$gUserGenderOTHER = const GUserGender._('OTHER');

GUserGender _$gUserGenderValueOf(String name) {
  switch (name) {
    case 'MALE':
      return _$gUserGenderMALE;
    case 'FEMALE':
      return _$gUserGenderFEMALE;
    case 'OTHER':
      return _$gUserGenderOTHER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GUserGender> _$gUserGenderValues =
    new BuiltSet<GUserGender>(const <GUserGender>[
  _$gUserGenderMALE,
  _$gUserGenderFEMALE,
  _$gUserGenderOTHER,
]);

Serializer<GCreateComment> _$gCreateCommentSerializer =
    new _$GCreateCommentSerializer();
Serializer<GCreateUser> _$gCreateUserSerializer = new _$GCreateUserSerializer();
Serializer<GModifyUser> _$gModifyUserSerializer = new _$GModifyUserSerializer();
Serializer<GUserGender> _$gUserGenderSerializer = new _$GUserGenderSerializer();

class _$GCreateCommentSerializer
    implements StructuredSerializer<GCreateComment> {
  @override
  final Iterable<Type> types = const [GCreateComment, _$GCreateComment];
  @override
  final String wireName = 'GCreateComment';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'toiletId',
      serializers.serialize(object.toiletId,
          specifiedType: const FullType(GUuid)),
      'note',
      serializers.serialize(object.note, specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'toiletId':
          result.toiletId.replace(serializers.deserialize(value,
              specifiedType: const FullType(GUuid))! as GUuid);
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserSerializer implements StructuredSerializer<GCreateUser> {
  @override
  final Iterable<Type> types = const [GCreateUser, _$GCreateUser];
  @override
  final String wireName = 'GCreateUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'keycloakUuid',
      serializers.serialize(object.keycloakUuid,
          specifiedType: const FullType(GUuid)),
      'firstname',
      serializers.serialize(object.firstname,
          specifiedType: const FullType(String)),
      'lastname',
      serializers.serialize(object.lastname,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(GUserGender)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'town',
      serializers.serialize(object.town, specifiedType: const FullType(String)),
      'postalCode',
      serializers.serialize(object.postalCode,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'mobileNumber',
      serializers.serialize(object.mobileNumber,
          specifiedType: const FullType(String)),
      'authorizeDataSell',
      serializers.serialize(object.authorizeDataSell,
          specifiedType: const FullType(bool)),
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
        case 'keycloakUuid':
          result.keycloakUuid.replace(serializers.deserialize(value,
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
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(GUserGender))! as GUserGender;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'town':
          result.town = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'authorizeDataSell':
          result.authorizeDataSell = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
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
      'keycloakUuid',
      serializers.serialize(object.keycloakUuid,
          specifiedType: const FullType(GUuid)),
      'firstname',
      serializers.serialize(object.firstname,
          specifiedType: const FullType(String)),
      'lastname',
      serializers.serialize(object.lastname,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(GUserGender)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'town',
      serializers.serialize(object.town, specifiedType: const FullType(String)),
      'postalCode',
      serializers.serialize(object.postalCode,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'mobileNumber',
      serializers.serialize(object.mobileNumber,
          specifiedType: const FullType(String)),
      'authorizeDataSell',
      serializers.serialize(object.authorizeDataSell,
          specifiedType: const FullType(bool)),
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
        case 'keycloakUuid':
          result.keycloakUuid.replace(serializers.deserialize(value,
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
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(GUserGender))! as GUserGender;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'town':
          result.town = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'authorizeDataSell':
          result.authorizeDataSell = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserGenderSerializer implements PrimitiveSerializer<GUserGender> {
  @override
  final Iterable<Type> types = const <Type>[GUserGender];
  @override
  final String wireName = 'GUserGender';

  @override
  Object serialize(Serializers serializers, GUserGender object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GUserGender deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GUserGender.valueOf(serialized as String);
}

class _$GCreateComment extends GCreateComment {
  @override
  final GUuid toiletId;
  @override
  final double note;
  @override
  final String? comment;

  factory _$GCreateComment([void Function(GCreateCommentBuilder)? updates]) =>
      (new GCreateCommentBuilder()..update(updates))._build();

  _$GCreateComment._({required this.toiletId, required this.note, this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        toiletId, r'GCreateComment', 'toiletId');
    BuiltValueNullFieldError.checkNotNull(note, r'GCreateComment', 'note');
  }

  @override
  GCreateComment rebuild(void Function(GCreateCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentBuilder toBuilder() =>
      new GCreateCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateComment &&
        toiletId == other.toiletId &&
        note == other.note &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, toiletId.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateComment')
          ..add('toiletId', toiletId)
          ..add('note', note)
          ..add('comment', comment))
        .toString();
  }
}

class GCreateCommentBuilder
    implements Builder<GCreateComment, GCreateCommentBuilder> {
  _$GCreateComment? _$v;

  GUuidBuilder? _toiletId;
  GUuidBuilder get toiletId => _$this._toiletId ??= new GUuidBuilder();
  set toiletId(GUuidBuilder? toiletId) => _$this._toiletId = toiletId;

  double? _note;
  double? get note => _$this._note;
  set note(double? note) => _$this._note = note;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GCreateCommentBuilder();

  GCreateCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _toiletId = $v.toiletId.toBuilder();
      _note = $v.note;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateComment;
  }

  @override
  void update(void Function(GCreateCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateComment build() => _build();

  _$GCreateComment _build() {
    _$GCreateComment _$result;
    try {
      _$result = _$v ??
          new _$GCreateComment._(
              toiletId: toiletId.build(),
              note: BuiltValueNullFieldError.checkNotNull(
                  note, r'GCreateComment', 'note'),
              comment: comment);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'toiletId';
        toiletId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUser extends GCreateUser {
  @override
  final GUuid keycloakUuid;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final GUserGender gender;
  @override
  final String country;
  @override
  final String town;
  @override
  final String postalCode;
  @override
  final String address;
  @override
  final String mobileNumber;
  @override
  final bool authorizeDataSell;

  factory _$GCreateUser([void Function(GCreateUserBuilder)? updates]) =>
      (new GCreateUserBuilder()..update(updates))._build();

  _$GCreateUser._(
      {required this.keycloakUuid,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.gender,
      required this.country,
      required this.town,
      required this.postalCode,
      required this.address,
      required this.mobileNumber,
      required this.authorizeDataSell})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        keycloakUuid, r'GCreateUser', 'keycloakUuid');
    BuiltValueNullFieldError.checkNotNull(
        firstname, r'GCreateUser', 'firstname');
    BuiltValueNullFieldError.checkNotNull(lastname, r'GCreateUser', 'lastname');
    BuiltValueNullFieldError.checkNotNull(email, r'GCreateUser', 'email');
    BuiltValueNullFieldError.checkNotNull(gender, r'GCreateUser', 'gender');
    BuiltValueNullFieldError.checkNotNull(country, r'GCreateUser', 'country');
    BuiltValueNullFieldError.checkNotNull(town, r'GCreateUser', 'town');
    BuiltValueNullFieldError.checkNotNull(
        postalCode, r'GCreateUser', 'postalCode');
    BuiltValueNullFieldError.checkNotNull(address, r'GCreateUser', 'address');
    BuiltValueNullFieldError.checkNotNull(
        mobileNumber, r'GCreateUser', 'mobileNumber');
    BuiltValueNullFieldError.checkNotNull(
        authorizeDataSell, r'GCreateUser', 'authorizeDataSell');
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
        keycloakUuid == other.keycloakUuid &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        email == other.email &&
        gender == other.gender &&
        country == other.country &&
        town == other.town &&
        postalCode == other.postalCode &&
        address == other.address &&
        mobileNumber == other.mobileNumber &&
        authorizeDataSell == other.authorizeDataSell;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keycloakUuid.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, town.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, mobileNumber.hashCode);
    _$hash = $jc(_$hash, authorizeDataSell.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUser')
          ..add('keycloakUuid', keycloakUuid)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('email', email)
          ..add('gender', gender)
          ..add('country', country)
          ..add('town', town)
          ..add('postalCode', postalCode)
          ..add('address', address)
          ..add('mobileNumber', mobileNumber)
          ..add('authorizeDataSell', authorizeDataSell))
        .toString();
  }
}

class GCreateUserBuilder implements Builder<GCreateUser, GCreateUserBuilder> {
  _$GCreateUser? _$v;

  GUuidBuilder? _keycloakUuid;
  GUuidBuilder get keycloakUuid => _$this._keycloakUuid ??= new GUuidBuilder();
  set keycloakUuid(GUuidBuilder? keycloakUuid) =>
      _$this._keycloakUuid = keycloakUuid;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GUserGender? _gender;
  GUserGender? get gender => _$this._gender;
  set gender(GUserGender? gender) => _$this._gender = gender;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _town;
  String? get town => _$this._town;
  set town(String? town) => _$this._town = town;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  bool? _authorizeDataSell;
  bool? get authorizeDataSell => _$this._authorizeDataSell;
  set authorizeDataSell(bool? authorizeDataSell) =>
      _$this._authorizeDataSell = authorizeDataSell;

  GCreateUserBuilder();

  GCreateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keycloakUuid = $v.keycloakUuid.toBuilder();
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _email = $v.email;
      _gender = $v.gender;
      _country = $v.country;
      _town = $v.town;
      _postalCode = $v.postalCode;
      _address = $v.address;
      _mobileNumber = $v.mobileNumber;
      _authorizeDataSell = $v.authorizeDataSell;
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
              keycloakUuid: keycloakUuid.build(),
              firstname: BuiltValueNullFieldError.checkNotNull(
                  firstname, r'GCreateUser', 'firstname'),
              lastname: BuiltValueNullFieldError.checkNotNull(
                  lastname, r'GCreateUser', 'lastname'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'GCreateUser', 'email'),
              gender: BuiltValueNullFieldError.checkNotNull(
                  gender, r'GCreateUser', 'gender'),
              country: BuiltValueNullFieldError.checkNotNull(
                  country, r'GCreateUser', 'country'),
              town: BuiltValueNullFieldError.checkNotNull(
                  town, r'GCreateUser', 'town'),
              postalCode: BuiltValueNullFieldError.checkNotNull(
                  postalCode, r'GCreateUser', 'postalCode'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, r'GCreateUser', 'address'),
              mobileNumber: BuiltValueNullFieldError.checkNotNull(
                  mobileNumber, r'GCreateUser', 'mobileNumber'),
              authorizeDataSell:
                  BuiltValueNullFieldError.checkNotNull(authorizeDataSell, r'GCreateUser', 'authorizeDataSell'));
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
  final GUuid keycloakUuid;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final GUserGender gender;
  @override
  final String country;
  @override
  final String town;
  @override
  final String postalCode;
  @override
  final String address;
  @override
  final String mobileNumber;
  @override
  final bool authorizeDataSell;

  factory _$GModifyUser([void Function(GModifyUserBuilder)? updates]) =>
      (new GModifyUserBuilder()..update(updates))._build();

  _$GModifyUser._(
      {required this.id,
      required this.keycloakUuid,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.gender,
      required this.country,
      required this.town,
      required this.postalCode,
      required this.address,
      required this.mobileNumber,
      required this.authorizeDataSell})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GModifyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        keycloakUuid, r'GModifyUser', 'keycloakUuid');
    BuiltValueNullFieldError.checkNotNull(
        firstname, r'GModifyUser', 'firstname');
    BuiltValueNullFieldError.checkNotNull(lastname, r'GModifyUser', 'lastname');
    BuiltValueNullFieldError.checkNotNull(email, r'GModifyUser', 'email');
    BuiltValueNullFieldError.checkNotNull(gender, r'GModifyUser', 'gender');
    BuiltValueNullFieldError.checkNotNull(country, r'GModifyUser', 'country');
    BuiltValueNullFieldError.checkNotNull(town, r'GModifyUser', 'town');
    BuiltValueNullFieldError.checkNotNull(
        postalCode, r'GModifyUser', 'postalCode');
    BuiltValueNullFieldError.checkNotNull(address, r'GModifyUser', 'address');
    BuiltValueNullFieldError.checkNotNull(
        mobileNumber, r'GModifyUser', 'mobileNumber');
    BuiltValueNullFieldError.checkNotNull(
        authorizeDataSell, r'GModifyUser', 'authorizeDataSell');
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
        keycloakUuid == other.keycloakUuid &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        email == other.email &&
        gender == other.gender &&
        country == other.country &&
        town == other.town &&
        postalCode == other.postalCode &&
        address == other.address &&
        mobileNumber == other.mobileNumber &&
        authorizeDataSell == other.authorizeDataSell;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, keycloakUuid.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, town.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, mobileNumber.hashCode);
    _$hash = $jc(_$hash, authorizeDataSell.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GModifyUser')
          ..add('id', id)
          ..add('keycloakUuid', keycloakUuid)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('email', email)
          ..add('gender', gender)
          ..add('country', country)
          ..add('town', town)
          ..add('postalCode', postalCode)
          ..add('address', address)
          ..add('mobileNumber', mobileNumber)
          ..add('authorizeDataSell', authorizeDataSell))
        .toString();
  }
}

class GModifyUserBuilder implements Builder<GModifyUser, GModifyUserBuilder> {
  _$GModifyUser? _$v;

  GUuidBuilder? _id;
  GUuidBuilder get id => _$this._id ??= new GUuidBuilder();
  set id(GUuidBuilder? id) => _$this._id = id;

  GUuidBuilder? _keycloakUuid;
  GUuidBuilder get keycloakUuid => _$this._keycloakUuid ??= new GUuidBuilder();
  set keycloakUuid(GUuidBuilder? keycloakUuid) =>
      _$this._keycloakUuid = keycloakUuid;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GUserGender? _gender;
  GUserGender? get gender => _$this._gender;
  set gender(GUserGender? gender) => _$this._gender = gender;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _town;
  String? get town => _$this._town;
  set town(String? town) => _$this._town = town;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  bool? _authorizeDataSell;
  bool? get authorizeDataSell => _$this._authorizeDataSell;
  set authorizeDataSell(bool? authorizeDataSell) =>
      _$this._authorizeDataSell = authorizeDataSell;

  GModifyUserBuilder();

  GModifyUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id.toBuilder();
      _keycloakUuid = $v.keycloakUuid.toBuilder();
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _email = $v.email;
      _gender = $v.gender;
      _country = $v.country;
      _town = $v.town;
      _postalCode = $v.postalCode;
      _address = $v.address;
      _mobileNumber = $v.mobileNumber;
      _authorizeDataSell = $v.authorizeDataSell;
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
              keycloakUuid: keycloakUuid.build(),
              firstname: BuiltValueNullFieldError.checkNotNull(
                  firstname, r'GModifyUser', 'firstname'),
              lastname: BuiltValueNullFieldError.checkNotNull(
                  lastname, r'GModifyUser', 'lastname'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'GModifyUser', 'email'),
              gender: BuiltValueNullFieldError.checkNotNull(
                  gender, r'GModifyUser', 'gender'),
              country: BuiltValueNullFieldError.checkNotNull(
                  country, r'GModifyUser', 'country'),
              town: BuiltValueNullFieldError.checkNotNull(
                  town, r'GModifyUser', 'town'),
              postalCode: BuiltValueNullFieldError.checkNotNull(
                  postalCode, r'GModifyUser', 'postalCode'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, r'GModifyUser', 'address'),
              mobileNumber: BuiltValueNullFieldError.checkNotNull(
                  mobileNumber, r'GModifyUser', 'mobileNumber'),
              authorizeDataSell:
                  BuiltValueNullFieldError.checkNotNull(authorizeDataSell, r'GModifyUser', 'authorizeDataSell'));
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
