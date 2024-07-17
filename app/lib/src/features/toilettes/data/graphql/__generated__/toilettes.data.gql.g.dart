// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toilettes.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllToilettesData> _$gAllToilettesDataSerializer =
    new _$GAllToilettesDataSerializer();
Serializer<GAllToilettesData_getToiletProche>
    _$gAllToilettesDataGetToiletProcheSerializer =
    new _$GAllToilettesData_getToiletProcheSerializer();

class _$GAllToilettesDataSerializer
    implements StructuredSerializer<GAllToilettesData> {
  @override
  final Iterable<Type> types = const [GAllToilettesData, _$GAllToilettesData];
  @override
  final String wireName = 'GAllToilettesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAllToilettesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getToiletProche',
      serializers.serialize(object.getToiletProche,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GAllToilettesData_getToiletProche)])),
    ];

    return result;
  }

  @override
  GAllToilettesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllToilettesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'getToiletProche':
          result.getToiletProche.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAllToilettesData_getToiletProche)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllToilettesData_getToiletProcheSerializer
    implements StructuredSerializer<GAllToilettesData_getToiletProche> {
  @override
  final Iterable<Type> types = const [
    GAllToilettesData_getToiletProche,
    _$GAllToilettesData_getToiletProche
  ];
  @override
  final String wireName = 'GAllToilettesData_getToiletProche';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllToilettesData_getToiletProche object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.GUuid)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'long',
      serializers.serialize(object.long, specifiedType: const FullType(double)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'companiesId',
      serializers.serialize(object.companiesId,
          specifiedType: const FullType(_i2.GUuid)),
      'isMaintenance',
      serializers.serialize(object.isMaintenance,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GAllToilettesData_getToiletProche deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllToilettesData_getToiletProcheBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GUuid))! as _i2.GUuid);
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'companiesId':
          result.companiesId.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GUuid))! as _i2.GUuid);
          break;
        case 'isMaintenance':
          result.isMaintenance = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GAllToilettesData extends GAllToilettesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GAllToilettesData_getToiletProche> getToiletProche;

  factory _$GAllToilettesData(
          [void Function(GAllToilettesDataBuilder)? updates]) =>
      (new GAllToilettesDataBuilder()..update(updates))._build();

  _$GAllToilettesData._(
      {required this.G__typename, required this.getToiletProche})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAllToilettesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getToiletProche, r'GAllToilettesData', 'getToiletProche');
  }

  @override
  GAllToilettesData rebuild(void Function(GAllToilettesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllToilettesDataBuilder toBuilder() =>
      new GAllToilettesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllToilettesData &&
        G__typename == other.G__typename &&
        getToiletProche == other.getToiletProche;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getToiletProche.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAllToilettesData')
          ..add('G__typename', G__typename)
          ..add('getToiletProche', getToiletProche))
        .toString();
  }
}

class GAllToilettesDataBuilder
    implements Builder<GAllToilettesData, GAllToilettesDataBuilder> {
  _$GAllToilettesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAllToilettesData_getToiletProche>? _getToiletProche;
  ListBuilder<GAllToilettesData_getToiletProche> get getToiletProche =>
      _$this._getToiletProche ??=
          new ListBuilder<GAllToilettesData_getToiletProche>();
  set getToiletProche(
          ListBuilder<GAllToilettesData_getToiletProche>? getToiletProche) =>
      _$this._getToiletProche = getToiletProche;

  GAllToilettesDataBuilder() {
    GAllToilettesData._initializeBuilder(this);
  }

  GAllToilettesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getToiletProche = $v.getToiletProche.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllToilettesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllToilettesData;
  }

  @override
  void update(void Function(GAllToilettesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllToilettesData build() => _build();

  _$GAllToilettesData _build() {
    _$GAllToilettesData _$result;
    try {
      _$result = _$v ??
          new _$GAllToilettesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAllToilettesData', 'G__typename'),
              getToiletProche: getToiletProche.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getToiletProche';
        getToiletProche.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAllToilettesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllToilettesData_getToiletProche
    extends GAllToilettesData_getToiletProche {
  @override
  final String G__typename;
  @override
  final _i2.GUuid id;
  @override
  final double lat;
  @override
  final double long;
  @override
  final String name;
  @override
  final _i2.GUuid companiesId;
  @override
  final bool isMaintenance;

  factory _$GAllToilettesData_getToiletProche(
          [void Function(GAllToilettesData_getToiletProcheBuilder)? updates]) =>
      (new GAllToilettesData_getToiletProcheBuilder()..update(updates))
          ._build();

  _$GAllToilettesData_getToiletProche._(
      {required this.G__typename,
      required this.id,
      required this.lat,
      required this.long,
      required this.name,
      required this.companiesId,
      required this.isMaintenance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAllToilettesData_getToiletProche', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAllToilettesData_getToiletProche', 'id');
    BuiltValueNullFieldError.checkNotNull(
        lat, r'GAllToilettesData_getToiletProche', 'lat');
    BuiltValueNullFieldError.checkNotNull(
        long, r'GAllToilettesData_getToiletProche', 'long');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GAllToilettesData_getToiletProche', 'name');
    BuiltValueNullFieldError.checkNotNull(
        companiesId, r'GAllToilettesData_getToiletProche', 'companiesId');
    BuiltValueNullFieldError.checkNotNull(
        isMaintenance, r'GAllToilettesData_getToiletProche', 'isMaintenance');
  }

  @override
  GAllToilettesData_getToiletProche rebuild(
          void Function(GAllToilettesData_getToiletProcheBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllToilettesData_getToiletProcheBuilder toBuilder() =>
      new GAllToilettesData_getToiletProcheBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllToilettesData_getToiletProche &&
        G__typename == other.G__typename &&
        id == other.id &&
        lat == other.lat &&
        long == other.long &&
        name == other.name &&
        companiesId == other.companiesId &&
        isMaintenance == other.isMaintenance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, long.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, companiesId.hashCode);
    _$hash = $jc(_$hash, isMaintenance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAllToilettesData_getToiletProche')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('lat', lat)
          ..add('long', long)
          ..add('name', name)
          ..add('companiesId', companiesId)
          ..add('isMaintenance', isMaintenance))
        .toString();
  }
}

class GAllToilettesData_getToiletProcheBuilder
    implements
        Builder<GAllToilettesData_getToiletProche,
            GAllToilettesData_getToiletProcheBuilder> {
  _$GAllToilettesData_getToiletProche? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUuidBuilder? _id;
  _i2.GUuidBuilder get id => _$this._id ??= new _i2.GUuidBuilder();
  set id(_i2.GUuidBuilder? id) => _$this._id = id;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _long;
  double? get long => _$this._long;
  set long(double? long) => _$this._long = long;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.GUuidBuilder? _companiesId;
  _i2.GUuidBuilder get companiesId =>
      _$this._companiesId ??= new _i2.GUuidBuilder();
  set companiesId(_i2.GUuidBuilder? companiesId) =>
      _$this._companiesId = companiesId;

  bool? _isMaintenance;
  bool? get isMaintenance => _$this._isMaintenance;
  set isMaintenance(bool? isMaintenance) =>
      _$this._isMaintenance = isMaintenance;

  GAllToilettesData_getToiletProcheBuilder() {
    GAllToilettesData_getToiletProche._initializeBuilder(this);
  }

  GAllToilettesData_getToiletProcheBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _lat = $v.lat;
      _long = $v.long;
      _name = $v.name;
      _companiesId = $v.companiesId.toBuilder();
      _isMaintenance = $v.isMaintenance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllToilettesData_getToiletProche other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllToilettesData_getToiletProche;
  }

  @override
  void update(
      void Function(GAllToilettesData_getToiletProcheBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllToilettesData_getToiletProche build() => _build();

  _$GAllToilettesData_getToiletProche _build() {
    _$GAllToilettesData_getToiletProche _$result;
    try {
      _$result = _$v ??
          new _$GAllToilettesData_getToiletProche._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GAllToilettesData_getToiletProche', 'G__typename'),
              id: id.build(),
              lat: BuiltValueNullFieldError.checkNotNull(
                  lat, r'GAllToilettesData_getToiletProche', 'lat'),
              long: BuiltValueNullFieldError.checkNotNull(
                  long, r'GAllToilettesData_getToiletProche', 'long'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GAllToilettesData_getToiletProche', 'name'),
              companiesId: companiesId.build(),
              isMaintenance: BuiltValueNullFieldError.checkNotNull(
                  isMaintenance,
                  r'GAllToilettesData_getToiletProche',
                  'isMaintenance'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'companiesId';
        companiesId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAllToilettesData_getToiletProche', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
