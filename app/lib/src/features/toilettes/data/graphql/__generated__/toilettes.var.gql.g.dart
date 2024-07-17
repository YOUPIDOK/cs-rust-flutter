// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toilettes.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllToilettesVars> _$gAllToilettesVarsSerializer =
    new _$GAllToilettesVarsSerializer();

class _$GAllToilettesVarsSerializer
    implements StructuredSerializer<GAllToilettesVars> {
  @override
  final Iterable<Type> types = const [GAllToilettesVars, _$GAllToilettesVars];
  @override
  final String wireName = 'GAllToilettesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAllToilettesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.long;
    if (value != null) {
      result
        ..add('long')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.radiusKm;
    if (value != null) {
      result
        ..add('radiusKm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GAllToilettesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllToilettesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'radiusKm':
          result.radiusKm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAllToilettesVars extends GAllToilettesVars {
  @override
  final double? lat;
  @override
  final double? long;
  @override
  final double? radiusKm;

  factory _$GAllToilettesVars(
          [void Function(GAllToilettesVarsBuilder)? updates]) =>
      (new GAllToilettesVarsBuilder()..update(updates))._build();

  _$GAllToilettesVars._({this.lat, this.long, this.radiusKm}) : super._();

  @override
  GAllToilettesVars rebuild(void Function(GAllToilettesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllToilettesVarsBuilder toBuilder() =>
      new GAllToilettesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllToilettesVars &&
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
    return (newBuiltValueToStringHelper(r'GAllToilettesVars')
          ..add('lat', lat)
          ..add('long', long)
          ..add('radiusKm', radiusKm))
        .toString();
  }
}

class GAllToilettesVarsBuilder
    implements Builder<GAllToilettesVars, GAllToilettesVarsBuilder> {
  _$GAllToilettesVars? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _long;
  double? get long => _$this._long;
  set long(double? long) => _$this._long = long;

  double? _radiusKm;
  double? get radiusKm => _$this._radiusKm;
  set radiusKm(double? radiusKm) => _$this._radiusKm = radiusKm;

  GAllToilettesVarsBuilder();

  GAllToilettesVarsBuilder get _$this {
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
  void replace(GAllToilettesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllToilettesVars;
  }

  @override
  void update(void Function(GAllToilettesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllToilettesVars build() => _build();

  _$GAllToilettesVars _build() {
    final _$result = _$v ??
        new _$GAllToilettesVars._(lat: lat, long: long, radiusKm: radiusKm);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
