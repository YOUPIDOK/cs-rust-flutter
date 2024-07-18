// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toilettes.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNearToilettesData> _$gNearToilettesDataSerializer =
    new _$GNearToilettesDataSerializer();
Serializer<GNearToilettesData_getToiletProche>
    _$gNearToilettesDataGetToiletProcheSerializer =
    new _$GNearToilettesData_getToiletProcheSerializer();
Serializer<GToilettesData> _$gToilettesDataSerializer =
    new _$GToilettesDataSerializer();
Serializer<GToilettesData_getToilets> _$gToilettesDataGetToiletsSerializer =
    new _$GToilettesData_getToiletsSerializer();

class _$GNearToilettesDataSerializer
    implements StructuredSerializer<GNearToilettesData> {
  @override
  final Iterable<Type> types = const [GNearToilettesData, _$GNearToilettesData];
  @override
  final String wireName = 'GNearToilettesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNearToilettesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getToiletProche',
      serializers.serialize(object.getToiletProche,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GNearToilettesData_getToiletProche)])),
    ];

    return result;
  }

  @override
  GNearToilettesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNearToilettesDataBuilder();

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
                const FullType(GNearToilettesData_getToiletProche)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GNearToilettesData_getToiletProcheSerializer
    implements StructuredSerializer<GNearToilettesData_getToiletProche> {
  @override
  final Iterable<Type> types = const [
    GNearToilettesData_getToiletProche,
    _$GNearToilettesData_getToiletProche
  ];
  @override
  final String wireName = 'GNearToilettesData_getToiletProche';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNearToilettesData_getToiletProche object,
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
  GNearToilettesData_getToiletProche deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNearToilettesData_getToiletProcheBuilder();

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

class _$GToilettesDataSerializer
    implements StructuredSerializer<GToilettesData> {
  @override
  final Iterable<Type> types = const [GToilettesData, _$GToilettesData];
  @override
  final String wireName = 'GToilettesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GToilettesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getToilets',
      serializers.serialize(object.getToilets,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GToilettesData_getToilets)])),
    ];

    return result;
  }

  @override
  GToilettesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToilettesDataBuilder();

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
        case 'getToilets':
          result.getToilets.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GToilettesData_getToilets)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GToilettesData_getToiletsSerializer
    implements StructuredSerializer<GToilettesData_getToilets> {
  @override
  final Iterable<Type> types = const [
    GToilettesData_getToilets,
    _$GToilettesData_getToilets
  ];
  @override
  final String wireName = 'GToilettesData_getToilets';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToilettesData_getToilets object,
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
  GToilettesData_getToilets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToilettesData_getToiletsBuilder();

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

class _$GNearToilettesData extends GNearToilettesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GNearToilettesData_getToiletProche> getToiletProche;

  factory _$GNearToilettesData(
          [void Function(GNearToilettesDataBuilder)? updates]) =>
      (new GNearToilettesDataBuilder()..update(updates))._build();

  _$GNearToilettesData._(
      {required this.G__typename, required this.getToiletProche})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNearToilettesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getToiletProche, r'GNearToilettesData', 'getToiletProche');
  }

  @override
  GNearToilettesData rebuild(
          void Function(GNearToilettesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNearToilettesDataBuilder toBuilder() =>
      new GNearToilettesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNearToilettesData &&
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
    return (newBuiltValueToStringHelper(r'GNearToilettesData')
          ..add('G__typename', G__typename)
          ..add('getToiletProche', getToiletProche))
        .toString();
  }
}

class GNearToilettesDataBuilder
    implements Builder<GNearToilettesData, GNearToilettesDataBuilder> {
  _$GNearToilettesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GNearToilettesData_getToiletProche>? _getToiletProche;
  ListBuilder<GNearToilettesData_getToiletProche> get getToiletProche =>
      _$this._getToiletProche ??=
          new ListBuilder<GNearToilettesData_getToiletProche>();
  set getToiletProche(
          ListBuilder<GNearToilettesData_getToiletProche>? getToiletProche) =>
      _$this._getToiletProche = getToiletProche;

  GNearToilettesDataBuilder() {
    GNearToilettesData._initializeBuilder(this);
  }

  GNearToilettesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getToiletProche = $v.getToiletProche.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNearToilettesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNearToilettesData;
  }

  @override
  void update(void Function(GNearToilettesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNearToilettesData build() => _build();

  _$GNearToilettesData _build() {
    _$GNearToilettesData _$result;
    try {
      _$result = _$v ??
          new _$GNearToilettesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GNearToilettesData', 'G__typename'),
              getToiletProche: getToiletProche.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getToiletProche';
        getToiletProche.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNearToilettesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNearToilettesData_getToiletProche
    extends GNearToilettesData_getToiletProche {
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

  factory _$GNearToilettesData_getToiletProche(
          [void Function(GNearToilettesData_getToiletProcheBuilder)?
              updates]) =>
      (new GNearToilettesData_getToiletProcheBuilder()..update(updates))
          ._build();

  _$GNearToilettesData_getToiletProche._(
      {required this.G__typename,
      required this.id,
      required this.lat,
      required this.long,
      required this.name,
      required this.companiesId,
      required this.isMaintenance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNearToilettesData_getToiletProche', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GNearToilettesData_getToiletProche', 'id');
    BuiltValueNullFieldError.checkNotNull(
        lat, r'GNearToilettesData_getToiletProche', 'lat');
    BuiltValueNullFieldError.checkNotNull(
        long, r'GNearToilettesData_getToiletProche', 'long');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GNearToilettesData_getToiletProche', 'name');
    BuiltValueNullFieldError.checkNotNull(
        companiesId, r'GNearToilettesData_getToiletProche', 'companiesId');
    BuiltValueNullFieldError.checkNotNull(
        isMaintenance, r'GNearToilettesData_getToiletProche', 'isMaintenance');
  }

  @override
  GNearToilettesData_getToiletProche rebuild(
          void Function(GNearToilettesData_getToiletProcheBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNearToilettesData_getToiletProcheBuilder toBuilder() =>
      new GNearToilettesData_getToiletProcheBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNearToilettesData_getToiletProche &&
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
    return (newBuiltValueToStringHelper(r'GNearToilettesData_getToiletProche')
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

class GNearToilettesData_getToiletProcheBuilder
    implements
        Builder<GNearToilettesData_getToiletProche,
            GNearToilettesData_getToiletProcheBuilder> {
  _$GNearToilettesData_getToiletProche? _$v;

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

  GNearToilettesData_getToiletProcheBuilder() {
    GNearToilettesData_getToiletProche._initializeBuilder(this);
  }

  GNearToilettesData_getToiletProcheBuilder get _$this {
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
  void replace(GNearToilettesData_getToiletProche other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNearToilettesData_getToiletProche;
  }

  @override
  void update(
      void Function(GNearToilettesData_getToiletProcheBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNearToilettesData_getToiletProche build() => _build();

  _$GNearToilettesData_getToiletProche _build() {
    _$GNearToilettesData_getToiletProche _$result;
    try {
      _$result = _$v ??
          new _$GNearToilettesData_getToiletProche._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GNearToilettesData_getToiletProche', 'G__typename'),
              id: id.build(),
              lat: BuiltValueNullFieldError.checkNotNull(
                  lat, r'GNearToilettesData_getToiletProche', 'lat'),
              long: BuiltValueNullFieldError.checkNotNull(
                  long, r'GNearToilettesData_getToiletProche', 'long'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GNearToilettesData_getToiletProche', 'name'),
              companiesId: companiesId.build(),
              isMaintenance: BuiltValueNullFieldError.checkNotNull(
                  isMaintenance,
                  r'GNearToilettesData_getToiletProche',
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
            r'GNearToilettesData_getToiletProche', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToilettesData extends GToilettesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GToilettesData_getToilets> getToilets;

  factory _$GToilettesData([void Function(GToilettesDataBuilder)? updates]) =>
      (new GToilettesDataBuilder()..update(updates))._build();

  _$GToilettesData._({required this.G__typename, required this.getToilets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToilettesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getToilets, r'GToilettesData', 'getToilets');
  }

  @override
  GToilettesData rebuild(void Function(GToilettesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToilettesDataBuilder toBuilder() =>
      new GToilettesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToilettesData &&
        G__typename == other.G__typename &&
        getToilets == other.getToilets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getToilets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToilettesData')
          ..add('G__typename', G__typename)
          ..add('getToilets', getToilets))
        .toString();
  }
}

class GToilettesDataBuilder
    implements Builder<GToilettesData, GToilettesDataBuilder> {
  _$GToilettesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GToilettesData_getToilets>? _getToilets;
  ListBuilder<GToilettesData_getToilets> get getToilets =>
      _$this._getToilets ??= new ListBuilder<GToilettesData_getToilets>();
  set getToilets(ListBuilder<GToilettesData_getToilets>? getToilets) =>
      _$this._getToilets = getToilets;

  GToilettesDataBuilder() {
    GToilettesData._initializeBuilder(this);
  }

  GToilettesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getToilets = $v.getToilets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToilettesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToilettesData;
  }

  @override
  void update(void Function(GToilettesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToilettesData build() => _build();

  _$GToilettesData _build() {
    _$GToilettesData _$result;
    try {
      _$result = _$v ??
          new _$GToilettesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GToilettesData', 'G__typename'),
              getToilets: getToilets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getToilets';
        getToilets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToilettesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToilettesData_getToilets extends GToilettesData_getToilets {
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

  factory _$GToilettesData_getToilets(
          [void Function(GToilettesData_getToiletsBuilder)? updates]) =>
      (new GToilettesData_getToiletsBuilder()..update(updates))._build();

  _$GToilettesData_getToilets._(
      {required this.G__typename,
      required this.id,
      required this.lat,
      required this.long,
      required this.name,
      required this.companiesId,
      required this.isMaintenance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToilettesData_getToilets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToilettesData_getToilets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        lat, r'GToilettesData_getToilets', 'lat');
    BuiltValueNullFieldError.checkNotNull(
        long, r'GToilettesData_getToilets', 'long');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GToilettesData_getToilets', 'name');
    BuiltValueNullFieldError.checkNotNull(
        companiesId, r'GToilettesData_getToilets', 'companiesId');
    BuiltValueNullFieldError.checkNotNull(
        isMaintenance, r'GToilettesData_getToilets', 'isMaintenance');
  }

  @override
  GToilettesData_getToilets rebuild(
          void Function(GToilettesData_getToiletsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToilettesData_getToiletsBuilder toBuilder() =>
      new GToilettesData_getToiletsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToilettesData_getToilets &&
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
    return (newBuiltValueToStringHelper(r'GToilettesData_getToilets')
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

class GToilettesData_getToiletsBuilder
    implements
        Builder<GToilettesData_getToilets, GToilettesData_getToiletsBuilder> {
  _$GToilettesData_getToilets? _$v;

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

  GToilettesData_getToiletsBuilder() {
    GToilettesData_getToilets._initializeBuilder(this);
  }

  GToilettesData_getToiletsBuilder get _$this {
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
  void replace(GToilettesData_getToilets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToilettesData_getToilets;
  }

  @override
  void update(void Function(GToilettesData_getToiletsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToilettesData_getToilets build() => _build();

  _$GToilettesData_getToilets _build() {
    _$GToilettesData_getToilets _$result;
    try {
      _$result = _$v ??
          new _$GToilettesData_getToilets._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GToilettesData_getToilets', 'G__typename'),
              id: id.build(),
              lat: BuiltValueNullFieldError.checkNotNull(
                  lat, r'GToilettesData_getToilets', 'lat'),
              long: BuiltValueNullFieldError.checkNotNull(
                  long, r'GToilettesData_getToilets', 'long'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GToilettesData_getToilets', 'name'),
              companiesId: companiesId.build(),
              isMaintenance: BuiltValueNullFieldError.checkNotNull(
                  isMaintenance,
                  r'GToilettesData_getToilets',
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
            r'GToilettesData_getToilets', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
