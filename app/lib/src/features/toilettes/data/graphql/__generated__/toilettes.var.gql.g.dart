// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toilettes.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNearToilettesVars> _$gNearToilettesVarsSerializer =
    new _$GNearToilettesVarsSerializer();
Serializer<GToilettesVars> _$gToilettesVarsSerializer =
    new _$GToilettesVarsSerializer();
Serializer<GupdateDoorStateVars> _$gupdateDoorStateVarsSerializer =
    new _$GupdateDoorStateVarsSerializer();
Serializer<GtoggleLockStateVars> _$gtoggleLockStateVarsSerializer =
    new _$GtoggleLockStateVarsSerializer();
Serializer<GToiletteSubscriptionVars> _$gToiletteSubscriptionVarsSerializer =
    new _$GToiletteSubscriptionVarsSerializer();

class _$GNearToilettesVarsSerializer
    implements StructuredSerializer<GNearToilettesVars> {
  @override
  final Iterable<Type> types = const [GNearToilettesVars, _$GNearToilettesVars];
  @override
  final String wireName = 'GNearToilettesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNearToilettesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'long',
      serializers.serialize(object.long, specifiedType: const FullType(double)),
      'radiusKm',
      serializers.serialize(object.radiusKm,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GNearToilettesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNearToilettesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'radiusKm':
          result.radiusKm = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GToilettesVarsSerializer
    implements StructuredSerializer<GToilettesVars> {
  @override
  final Iterable<Type> types = const [GToilettesVars, _$GToilettesVars];
  @override
  final String wireName = 'GToilettesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GToilettesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GToilettesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GToilettesVarsBuilder().build();
  }
}

class _$GupdateDoorStateVarsSerializer
    implements StructuredSerializer<GupdateDoorStateVars> {
  @override
  final Iterable<Type> types = const [
    GupdateDoorStateVars,
    _$GupdateDoorStateVars
  ];
  @override
  final String wireName = 'GupdateDoorStateVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateDoorStateVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.GUuid)),
    ];

    return result;
  }

  @override
  GupdateDoorStateVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateDoorStateVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GUuid))! as _i2.GUuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GtoggleLockStateVarsSerializer
    implements StructuredSerializer<GtoggleLockStateVars> {
  @override
  final Iterable<Type> types = const [
    GtoggleLockStateVars,
    _$GtoggleLockStateVars
  ];
  @override
  final String wireName = 'GtoggleLockStateVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtoggleLockStateVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.GUuid)),
    ];

    return result;
  }

  @override
  GtoggleLockStateVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtoggleLockStateVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GUuid))! as _i2.GUuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GToiletteSubscriptionVarsSerializer
    implements StructuredSerializer<GToiletteSubscriptionVars> {
  @override
  final Iterable<Type> types = const [
    GToiletteSubscriptionVars,
    _$GToiletteSubscriptionVars
  ];
  @override
  final String wireName = 'GToiletteSubscriptionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToiletteSubscriptionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.GUuid)),
    ];

    return result;
  }

  @override
  GToiletteSubscriptionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToiletteSubscriptionVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GUuid))! as _i2.GUuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GNearToilettesVars extends GNearToilettesVars {
  @override
  final double lat;
  @override
  final double long;
  @override
  final double radiusKm;

  factory _$GNearToilettesVars(
          [void Function(GNearToilettesVarsBuilder)? updates]) =>
      (new GNearToilettesVarsBuilder()..update(updates))._build();

  _$GNearToilettesVars._(
      {required this.lat, required this.long, required this.radiusKm})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(lat, r'GNearToilettesVars', 'lat');
    BuiltValueNullFieldError.checkNotNull(long, r'GNearToilettesVars', 'long');
    BuiltValueNullFieldError.checkNotNull(
        radiusKm, r'GNearToilettesVars', 'radiusKm');
  }

  @override
  GNearToilettesVars rebuild(
          void Function(GNearToilettesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNearToilettesVarsBuilder toBuilder() =>
      new GNearToilettesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNearToilettesVars &&
        lat == other.lat &&
        long == other.long &&
        radiusKm == other.radiusKm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, long.hashCode);
    _$hash = $jc(_$hash, radiusKm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNearToilettesVars')
          ..add('lat', lat)
          ..add('long', long)
          ..add('radiusKm', radiusKm))
        .toString();
  }
}

class GNearToilettesVarsBuilder
    implements Builder<GNearToilettesVars, GNearToilettesVarsBuilder> {
  _$GNearToilettesVars? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _long;
  double? get long => _$this._long;
  set long(double? long) => _$this._long = long;

  double? _radiusKm;
  double? get radiusKm => _$this._radiusKm;
  set radiusKm(double? radiusKm) => _$this._radiusKm = radiusKm;

  GNearToilettesVarsBuilder();

  GNearToilettesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _long = $v.long;
      _radiusKm = $v.radiusKm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNearToilettesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNearToilettesVars;
  }

  @override
  void update(void Function(GNearToilettesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNearToilettesVars build() => _build();

  _$GNearToilettesVars _build() {
    final _$result = _$v ??
        new _$GNearToilettesVars._(
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, r'GNearToilettesVars', 'lat'),
            long: BuiltValueNullFieldError.checkNotNull(
                long, r'GNearToilettesVars', 'long'),
            radiusKm: BuiltValueNullFieldError.checkNotNull(
                radiusKm, r'GNearToilettesVars', 'radiusKm'));
    replace(_$result);
    return _$result;
  }
}

class _$GToilettesVars extends GToilettesVars {
  factory _$GToilettesVars([void Function(GToilettesVarsBuilder)? updates]) =>
      (new GToilettesVarsBuilder()..update(updates))._build();

  _$GToilettesVars._() : super._();

  @override
  GToilettesVars rebuild(void Function(GToilettesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToilettesVarsBuilder toBuilder() =>
      new GToilettesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToilettesVars;
  }

  @override
  int get hashCode {
    return 29432515;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GToilettesVars').toString();
  }
}

class GToilettesVarsBuilder
    implements Builder<GToilettesVars, GToilettesVarsBuilder> {
  _$GToilettesVars? _$v;

  GToilettesVarsBuilder();

  @override
  void replace(GToilettesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToilettesVars;
  }

  @override
  void update(void Function(GToilettesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToilettesVars build() => _build();

  _$GToilettesVars _build() {
    final _$result = _$v ?? new _$GToilettesVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GupdateDoorStateVars extends GupdateDoorStateVars {
  @override
  final _i2.GUuid id;

  factory _$GupdateDoorStateVars(
          [void Function(GupdateDoorStateVarsBuilder)? updates]) =>
      (new GupdateDoorStateVarsBuilder()..update(updates))._build();

  _$GupdateDoorStateVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GupdateDoorStateVars', 'id');
  }

  @override
  GupdateDoorStateVars rebuild(
          void Function(GupdateDoorStateVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateDoorStateVarsBuilder toBuilder() =>
      new GupdateDoorStateVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateDoorStateVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdateDoorStateVars')..add('id', id))
        .toString();
  }
}

class GupdateDoorStateVarsBuilder
    implements Builder<GupdateDoorStateVars, GupdateDoorStateVarsBuilder> {
  _$GupdateDoorStateVars? _$v;

  _i2.GUuidBuilder? _id;
  _i2.GUuidBuilder get id => _$this._id ??= new _i2.GUuidBuilder();
  set id(_i2.GUuidBuilder? id) => _$this._id = id;

  GupdateDoorStateVarsBuilder();

  GupdateDoorStateVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateDoorStateVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateDoorStateVars;
  }

  @override
  void update(void Function(GupdateDoorStateVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateDoorStateVars build() => _build();

  _$GupdateDoorStateVars _build() {
    _$GupdateDoorStateVars _$result;
    try {
      _$result = _$v ?? new _$GupdateDoorStateVars._(id: id.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateDoorStateVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtoggleLockStateVars extends GtoggleLockStateVars {
  @override
  final _i2.GUuid id;

  factory _$GtoggleLockStateVars(
          [void Function(GtoggleLockStateVarsBuilder)? updates]) =>
      (new GtoggleLockStateVarsBuilder()..update(updates))._build();

  _$GtoggleLockStateVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GtoggleLockStateVars', 'id');
  }

  @override
  GtoggleLockStateVars rebuild(
          void Function(GtoggleLockStateVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtoggleLockStateVarsBuilder toBuilder() =>
      new GtoggleLockStateVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtoggleLockStateVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtoggleLockStateVars')..add('id', id))
        .toString();
  }
}

class GtoggleLockStateVarsBuilder
    implements Builder<GtoggleLockStateVars, GtoggleLockStateVarsBuilder> {
  _$GtoggleLockStateVars? _$v;

  _i2.GUuidBuilder? _id;
  _i2.GUuidBuilder get id => _$this._id ??= new _i2.GUuidBuilder();
  set id(_i2.GUuidBuilder? id) => _$this._id = id;

  GtoggleLockStateVarsBuilder();

  GtoggleLockStateVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtoggleLockStateVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtoggleLockStateVars;
  }

  @override
  void update(void Function(GtoggleLockStateVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtoggleLockStateVars build() => _build();

  _$GtoggleLockStateVars _build() {
    _$GtoggleLockStateVars _$result;
    try {
      _$result = _$v ?? new _$GtoggleLockStateVars._(id: id.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtoggleLockStateVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToiletteSubscriptionVars extends GToiletteSubscriptionVars {
  @override
  final _i2.GUuid id;

  factory _$GToiletteSubscriptionVars(
          [void Function(GToiletteSubscriptionVarsBuilder)? updates]) =>
      (new GToiletteSubscriptionVarsBuilder()..update(updates))._build();

  _$GToiletteSubscriptionVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToiletteSubscriptionVars', 'id');
  }

  @override
  GToiletteSubscriptionVars rebuild(
          void Function(GToiletteSubscriptionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToiletteSubscriptionVarsBuilder toBuilder() =>
      new GToiletteSubscriptionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToiletteSubscriptionVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToiletteSubscriptionVars')
          ..add('id', id))
        .toString();
  }
}

class GToiletteSubscriptionVarsBuilder
    implements
        Builder<GToiletteSubscriptionVars, GToiletteSubscriptionVarsBuilder> {
  _$GToiletteSubscriptionVars? _$v;

  _i2.GUuidBuilder? _id;
  _i2.GUuidBuilder get id => _$this._id ??= new _i2.GUuidBuilder();
  set id(_i2.GUuidBuilder? id) => _$this._id = id;

  GToiletteSubscriptionVarsBuilder();

  GToiletteSubscriptionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToiletteSubscriptionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToiletteSubscriptionVars;
  }

  @override
  void update(void Function(GToiletteSubscriptionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToiletteSubscriptionVars build() => _build();

  _$GToiletteSubscriptionVars _build() {
    _$GToiletteSubscriptionVars _$result;
    try {
      _$result = _$v ?? new _$GToiletteSubscriptionVars._(id: id.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToiletteSubscriptionVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
