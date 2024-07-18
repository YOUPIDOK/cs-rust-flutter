// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toilettes.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNearToilettesVars> _$gNearToilettesVarsSerializer =
    new _$GNearToilettesVarsSerializer();
Serializer<GToilettesVars> _$gToilettesVarsSerializer =
    new _$GToilettesVarsSerializer();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
