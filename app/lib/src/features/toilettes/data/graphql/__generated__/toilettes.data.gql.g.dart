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
Serializer<GupdateDoorStateData> _$gupdateDoorStateDataSerializer =
    new _$GupdateDoorStateDataSerializer();
Serializer<GupdateDoorStateData_updateDoorState>
    _$gupdateDoorStateDataUpdateDoorStateSerializer =
    new _$GupdateDoorStateData_updateDoorStateSerializer();
Serializer<GtoggleLockStateData> _$gtoggleLockStateDataSerializer =
    new _$GtoggleLockStateDataSerializer();
Serializer<GtoggleLockStateData_toggleLockState>
    _$gtoggleLockStateDataToggleLockStateSerializer =
    new _$GtoggleLockStateData_toggleLockStateSerializer();
Serializer<GToiletteSubscriptionData> _$gToiletteSubscriptionDataSerializer =
    new _$GToiletteSubscriptionDataSerializer();
Serializer<GToiletteSubscriptionData_doorStateUpdated>
    _$gToiletteSubscriptionDataDoorStateUpdatedSerializer =
    new _$GToiletteSubscriptionData_doorStateUpdatedSerializer();

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

class _$GupdateDoorStateDataSerializer
    implements StructuredSerializer<GupdateDoorStateData> {
  @override
  final Iterable<Type> types = const [
    GupdateDoorStateData,
    _$GupdateDoorStateData
  ];
  @override
  final String wireName = 'GupdateDoorStateData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateDoorStateData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateDoorState',
      serializers.serialize(object.updateDoorState,
          specifiedType: const FullType(GupdateDoorStateData_updateDoorState)),
    ];

    return result;
  }

  @override
  GupdateDoorStateData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateDoorStateDataBuilder();

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
        case 'updateDoorState':
          result.updateDoorState.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GupdateDoorStateData_updateDoorState))!
              as GupdateDoorStateData_updateDoorState);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateDoorStateData_updateDoorStateSerializer
    implements StructuredSerializer<GupdateDoorStateData_updateDoorState> {
  @override
  final Iterable<Type> types = const [
    GupdateDoorStateData_updateDoorState,
    _$GupdateDoorStateData_updateDoorState
  ];
  @override
  final String wireName = 'GupdateDoorStateData_updateDoorState';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateDoorStateData_updateDoorState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.GUuid)),
      'isMaintenance',
      serializers.serialize(object.isMaintenance,
          specifiedType: const FullType(bool)),
      'doorIsOpen',
      serializers.serialize(object.doorIsOpen,
          specifiedType: const FullType(bool)),
      'isLocked',
      serializers.serialize(object.isLocked,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GupdateDoorStateData_updateDoorState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateDoorStateData_updateDoorStateBuilder();

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
        case 'isMaintenance':
          result.isMaintenance = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'doorIsOpen':
          result.doorIsOpen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GtoggleLockStateDataSerializer
    implements StructuredSerializer<GtoggleLockStateData> {
  @override
  final Iterable<Type> types = const [
    GtoggleLockStateData,
    _$GtoggleLockStateData
  ];
  @override
  final String wireName = 'GtoggleLockStateData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtoggleLockStateData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'toggleLockState',
      serializers.serialize(object.toggleLockState,
          specifiedType: const FullType(GtoggleLockStateData_toggleLockState)),
    ];

    return result;
  }

  @override
  GtoggleLockStateData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtoggleLockStateDataBuilder();

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
        case 'toggleLockState':
          result.toggleLockState.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GtoggleLockStateData_toggleLockState))!
              as GtoggleLockStateData_toggleLockState);
          break;
      }
    }

    return result.build();
  }
}

class _$GtoggleLockStateData_toggleLockStateSerializer
    implements StructuredSerializer<GtoggleLockStateData_toggleLockState> {
  @override
  final Iterable<Type> types = const [
    GtoggleLockStateData_toggleLockState,
    _$GtoggleLockStateData_toggleLockState
  ];
  @override
  final String wireName = 'GtoggleLockStateData_toggleLockState';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtoggleLockStateData_toggleLockState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.GUuid)),
      'isMaintenance',
      serializers.serialize(object.isMaintenance,
          specifiedType: const FullType(bool)),
      'doorIsOpen',
      serializers.serialize(object.doorIsOpen,
          specifiedType: const FullType(bool)),
      'isLocked',
      serializers.serialize(object.isLocked,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GtoggleLockStateData_toggleLockState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtoggleLockStateData_toggleLockStateBuilder();

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
        case 'isMaintenance':
          result.isMaintenance = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'doorIsOpen':
          result.doorIsOpen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GToiletteSubscriptionDataSerializer
    implements StructuredSerializer<GToiletteSubscriptionData> {
  @override
  final Iterable<Type> types = const [
    GToiletteSubscriptionData,
    _$GToiletteSubscriptionData
  ];
  @override
  final String wireName = 'GToiletteSubscriptionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToiletteSubscriptionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'doorStateUpdated',
      serializers.serialize(object.doorStateUpdated,
          specifiedType:
              const FullType(GToiletteSubscriptionData_doorStateUpdated)),
    ];

    return result;
  }

  @override
  GToiletteSubscriptionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToiletteSubscriptionDataBuilder();

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
        case 'doorStateUpdated':
          result.doorStateUpdated.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToiletteSubscriptionData_doorStateUpdated))!
              as GToiletteSubscriptionData_doorStateUpdated);
          break;
      }
    }

    return result.build();
  }
}

class _$GToiletteSubscriptionData_doorStateUpdatedSerializer
    implements
        StructuredSerializer<GToiletteSubscriptionData_doorStateUpdated> {
  @override
  final Iterable<Type> types = const [
    GToiletteSubscriptionData_doorStateUpdated,
    _$GToiletteSubscriptionData_doorStateUpdated
  ];
  @override
  final String wireName = 'GToiletteSubscriptionData_doorStateUpdated';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToiletteSubscriptionData_doorStateUpdated object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.GUuid)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'doorIsOpen',
      serializers.serialize(object.doorIsOpen,
          specifiedType: const FullType(bool)),
      'isLocked',
      serializers.serialize(object.isLocked,
          specifiedType: const FullType(bool)),
      'isMaintenance',
      serializers.serialize(object.isMaintenance,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GToiletteSubscriptionData_doorStateUpdated deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToiletteSubscriptionData_doorStateUpdatedBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'doorIsOpen':
          result.doorIsOpen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
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

class _$GupdateDoorStateData extends GupdateDoorStateData {
  @override
  final String G__typename;
  @override
  final GupdateDoorStateData_updateDoorState updateDoorState;

  factory _$GupdateDoorStateData(
          [void Function(GupdateDoorStateDataBuilder)? updates]) =>
      (new GupdateDoorStateDataBuilder()..update(updates))._build();

  _$GupdateDoorStateData._(
      {required this.G__typename, required this.updateDoorState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupdateDoorStateData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateDoorState, r'GupdateDoorStateData', 'updateDoorState');
  }

  @override
  GupdateDoorStateData rebuild(
          void Function(GupdateDoorStateDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateDoorStateDataBuilder toBuilder() =>
      new GupdateDoorStateDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateDoorStateData &&
        G__typename == other.G__typename &&
        updateDoorState == other.updateDoorState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateDoorState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdateDoorStateData')
          ..add('G__typename', G__typename)
          ..add('updateDoorState', updateDoorState))
        .toString();
  }
}

class GupdateDoorStateDataBuilder
    implements Builder<GupdateDoorStateData, GupdateDoorStateDataBuilder> {
  _$GupdateDoorStateData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdateDoorStateData_updateDoorStateBuilder? _updateDoorState;
  GupdateDoorStateData_updateDoorStateBuilder get updateDoorState =>
      _$this._updateDoorState ??=
          new GupdateDoorStateData_updateDoorStateBuilder();
  set updateDoorState(
          GupdateDoorStateData_updateDoorStateBuilder? updateDoorState) =>
      _$this._updateDoorState = updateDoorState;

  GupdateDoorStateDataBuilder() {
    GupdateDoorStateData._initializeBuilder(this);
  }

  GupdateDoorStateDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateDoorState = $v.updateDoorState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateDoorStateData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateDoorStateData;
  }

  @override
  void update(void Function(GupdateDoorStateDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateDoorStateData build() => _build();

  _$GupdateDoorStateData _build() {
    _$GupdateDoorStateData _$result;
    try {
      _$result = _$v ??
          new _$GupdateDoorStateData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GupdateDoorStateData', 'G__typename'),
              updateDoorState: updateDoorState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateDoorState';
        updateDoorState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateDoorStateData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateDoorStateData_updateDoorState
    extends GupdateDoorStateData_updateDoorState {
  @override
  final String G__typename;
  @override
  final _i2.GUuid id;
  @override
  final bool isMaintenance;
  @override
  final bool doorIsOpen;
  @override
  final bool isLocked;

  factory _$GupdateDoorStateData_updateDoorState(
          [void Function(GupdateDoorStateData_updateDoorStateBuilder)?
              updates]) =>
      (new GupdateDoorStateData_updateDoorStateBuilder()..update(updates))
          ._build();

  _$GupdateDoorStateData_updateDoorState._(
      {required this.G__typename,
      required this.id,
      required this.isMaintenance,
      required this.doorIsOpen,
      required this.isLocked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupdateDoorStateData_updateDoorState', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GupdateDoorStateData_updateDoorState', 'id');
    BuiltValueNullFieldError.checkNotNull(isMaintenance,
        r'GupdateDoorStateData_updateDoorState', 'isMaintenance');
    BuiltValueNullFieldError.checkNotNull(
        doorIsOpen, r'GupdateDoorStateData_updateDoorState', 'doorIsOpen');
    BuiltValueNullFieldError.checkNotNull(
        isLocked, r'GupdateDoorStateData_updateDoorState', 'isLocked');
  }

  @override
  GupdateDoorStateData_updateDoorState rebuild(
          void Function(GupdateDoorStateData_updateDoorStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateDoorStateData_updateDoorStateBuilder toBuilder() =>
      new GupdateDoorStateData_updateDoorStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateDoorStateData_updateDoorState &&
        G__typename == other.G__typename &&
        id == other.id &&
        isMaintenance == other.isMaintenance &&
        doorIsOpen == other.doorIsOpen &&
        isLocked == other.isLocked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isMaintenance.hashCode);
    _$hash = $jc(_$hash, doorIsOpen.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdateDoorStateData_updateDoorState')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isMaintenance', isMaintenance)
          ..add('doorIsOpen', doorIsOpen)
          ..add('isLocked', isLocked))
        .toString();
  }
}

class GupdateDoorStateData_updateDoorStateBuilder
    implements
        Builder<GupdateDoorStateData_updateDoorState,
            GupdateDoorStateData_updateDoorStateBuilder> {
  _$GupdateDoorStateData_updateDoorState? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUuidBuilder? _id;
  _i2.GUuidBuilder get id => _$this._id ??= new _i2.GUuidBuilder();
  set id(_i2.GUuidBuilder? id) => _$this._id = id;

  bool? _isMaintenance;
  bool? get isMaintenance => _$this._isMaintenance;
  set isMaintenance(bool? isMaintenance) =>
      _$this._isMaintenance = isMaintenance;

  bool? _doorIsOpen;
  bool? get doorIsOpen => _$this._doorIsOpen;
  set doorIsOpen(bool? doorIsOpen) => _$this._doorIsOpen = doorIsOpen;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  GupdateDoorStateData_updateDoorStateBuilder() {
    GupdateDoorStateData_updateDoorState._initializeBuilder(this);
  }

  GupdateDoorStateData_updateDoorStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _isMaintenance = $v.isMaintenance;
      _doorIsOpen = $v.doorIsOpen;
      _isLocked = $v.isLocked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateDoorStateData_updateDoorState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateDoorStateData_updateDoorState;
  }

  @override
  void update(
      void Function(GupdateDoorStateData_updateDoorStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateDoorStateData_updateDoorState build() => _build();

  _$GupdateDoorStateData_updateDoorState _build() {
    _$GupdateDoorStateData_updateDoorState _$result;
    try {
      _$result = _$v ??
          new _$GupdateDoorStateData_updateDoorState._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GupdateDoorStateData_updateDoorState', 'G__typename'),
              id: id.build(),
              isMaintenance: BuiltValueNullFieldError.checkNotNull(
                  isMaintenance,
                  r'GupdateDoorStateData_updateDoorState',
                  'isMaintenance'),
              doorIsOpen: BuiltValueNullFieldError.checkNotNull(doorIsOpen,
                  r'GupdateDoorStateData_updateDoorState', 'doorIsOpen'),
              isLocked: BuiltValueNullFieldError.checkNotNull(isLocked,
                  r'GupdateDoorStateData_updateDoorState', 'isLocked'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateDoorStateData_updateDoorState',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtoggleLockStateData extends GtoggleLockStateData {
  @override
  final String G__typename;
  @override
  final GtoggleLockStateData_toggleLockState toggleLockState;

  factory _$GtoggleLockStateData(
          [void Function(GtoggleLockStateDataBuilder)? updates]) =>
      (new GtoggleLockStateDataBuilder()..update(updates))._build();

  _$GtoggleLockStateData._(
      {required this.G__typename, required this.toggleLockState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GtoggleLockStateData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        toggleLockState, r'GtoggleLockStateData', 'toggleLockState');
  }

  @override
  GtoggleLockStateData rebuild(
          void Function(GtoggleLockStateDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtoggleLockStateDataBuilder toBuilder() =>
      new GtoggleLockStateDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtoggleLockStateData &&
        G__typename == other.G__typename &&
        toggleLockState == other.toggleLockState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, toggleLockState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtoggleLockStateData')
          ..add('G__typename', G__typename)
          ..add('toggleLockState', toggleLockState))
        .toString();
  }
}

class GtoggleLockStateDataBuilder
    implements Builder<GtoggleLockStateData, GtoggleLockStateDataBuilder> {
  _$GtoggleLockStateData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GtoggleLockStateData_toggleLockStateBuilder? _toggleLockState;
  GtoggleLockStateData_toggleLockStateBuilder get toggleLockState =>
      _$this._toggleLockState ??=
          new GtoggleLockStateData_toggleLockStateBuilder();
  set toggleLockState(
          GtoggleLockStateData_toggleLockStateBuilder? toggleLockState) =>
      _$this._toggleLockState = toggleLockState;

  GtoggleLockStateDataBuilder() {
    GtoggleLockStateData._initializeBuilder(this);
  }

  GtoggleLockStateDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _toggleLockState = $v.toggleLockState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtoggleLockStateData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtoggleLockStateData;
  }

  @override
  void update(void Function(GtoggleLockStateDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtoggleLockStateData build() => _build();

  _$GtoggleLockStateData _build() {
    _$GtoggleLockStateData _$result;
    try {
      _$result = _$v ??
          new _$GtoggleLockStateData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GtoggleLockStateData', 'G__typename'),
              toggleLockState: toggleLockState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'toggleLockState';
        toggleLockState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtoggleLockStateData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtoggleLockStateData_toggleLockState
    extends GtoggleLockStateData_toggleLockState {
  @override
  final String G__typename;
  @override
  final _i2.GUuid id;
  @override
  final bool isMaintenance;
  @override
  final bool doorIsOpen;
  @override
  final bool isLocked;

  factory _$GtoggleLockStateData_toggleLockState(
          [void Function(GtoggleLockStateData_toggleLockStateBuilder)?
              updates]) =>
      (new GtoggleLockStateData_toggleLockStateBuilder()..update(updates))
          ._build();

  _$GtoggleLockStateData_toggleLockState._(
      {required this.G__typename,
      required this.id,
      required this.isMaintenance,
      required this.doorIsOpen,
      required this.isLocked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GtoggleLockStateData_toggleLockState', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GtoggleLockStateData_toggleLockState', 'id');
    BuiltValueNullFieldError.checkNotNull(isMaintenance,
        r'GtoggleLockStateData_toggleLockState', 'isMaintenance');
    BuiltValueNullFieldError.checkNotNull(
        doorIsOpen, r'GtoggleLockStateData_toggleLockState', 'doorIsOpen');
    BuiltValueNullFieldError.checkNotNull(
        isLocked, r'GtoggleLockStateData_toggleLockState', 'isLocked');
  }

  @override
  GtoggleLockStateData_toggleLockState rebuild(
          void Function(GtoggleLockStateData_toggleLockStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtoggleLockStateData_toggleLockStateBuilder toBuilder() =>
      new GtoggleLockStateData_toggleLockStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtoggleLockStateData_toggleLockState &&
        G__typename == other.G__typename &&
        id == other.id &&
        isMaintenance == other.isMaintenance &&
        doorIsOpen == other.doorIsOpen &&
        isLocked == other.isLocked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isMaintenance.hashCode);
    _$hash = $jc(_$hash, doorIsOpen.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtoggleLockStateData_toggleLockState')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isMaintenance', isMaintenance)
          ..add('doorIsOpen', doorIsOpen)
          ..add('isLocked', isLocked))
        .toString();
  }
}

class GtoggleLockStateData_toggleLockStateBuilder
    implements
        Builder<GtoggleLockStateData_toggleLockState,
            GtoggleLockStateData_toggleLockStateBuilder> {
  _$GtoggleLockStateData_toggleLockState? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUuidBuilder? _id;
  _i2.GUuidBuilder get id => _$this._id ??= new _i2.GUuidBuilder();
  set id(_i2.GUuidBuilder? id) => _$this._id = id;

  bool? _isMaintenance;
  bool? get isMaintenance => _$this._isMaintenance;
  set isMaintenance(bool? isMaintenance) =>
      _$this._isMaintenance = isMaintenance;

  bool? _doorIsOpen;
  bool? get doorIsOpen => _$this._doorIsOpen;
  set doorIsOpen(bool? doorIsOpen) => _$this._doorIsOpen = doorIsOpen;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  GtoggleLockStateData_toggleLockStateBuilder() {
    GtoggleLockStateData_toggleLockState._initializeBuilder(this);
  }

  GtoggleLockStateData_toggleLockStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _isMaintenance = $v.isMaintenance;
      _doorIsOpen = $v.doorIsOpen;
      _isLocked = $v.isLocked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtoggleLockStateData_toggleLockState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtoggleLockStateData_toggleLockState;
  }

  @override
  void update(
      void Function(GtoggleLockStateData_toggleLockStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtoggleLockStateData_toggleLockState build() => _build();

  _$GtoggleLockStateData_toggleLockState _build() {
    _$GtoggleLockStateData_toggleLockState _$result;
    try {
      _$result = _$v ??
          new _$GtoggleLockStateData_toggleLockState._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GtoggleLockStateData_toggleLockState', 'G__typename'),
              id: id.build(),
              isMaintenance: BuiltValueNullFieldError.checkNotNull(
                  isMaintenance,
                  r'GtoggleLockStateData_toggleLockState',
                  'isMaintenance'),
              doorIsOpen: BuiltValueNullFieldError.checkNotNull(doorIsOpen,
                  r'GtoggleLockStateData_toggleLockState', 'doorIsOpen'),
              isLocked: BuiltValueNullFieldError.checkNotNull(isLocked,
                  r'GtoggleLockStateData_toggleLockState', 'isLocked'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtoggleLockStateData_toggleLockState',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToiletteSubscriptionData extends GToiletteSubscriptionData {
  @override
  final String G__typename;
  @override
  final GToiletteSubscriptionData_doorStateUpdated doorStateUpdated;

  factory _$GToiletteSubscriptionData(
          [void Function(GToiletteSubscriptionDataBuilder)? updates]) =>
      (new GToiletteSubscriptionDataBuilder()..update(updates))._build();

  _$GToiletteSubscriptionData._(
      {required this.G__typename, required this.doorStateUpdated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToiletteSubscriptionData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        doorStateUpdated, r'GToiletteSubscriptionData', 'doorStateUpdated');
  }

  @override
  GToiletteSubscriptionData rebuild(
          void Function(GToiletteSubscriptionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToiletteSubscriptionDataBuilder toBuilder() =>
      new GToiletteSubscriptionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToiletteSubscriptionData &&
        G__typename == other.G__typename &&
        doorStateUpdated == other.doorStateUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, doorStateUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToiletteSubscriptionData')
          ..add('G__typename', G__typename)
          ..add('doorStateUpdated', doorStateUpdated))
        .toString();
  }
}

class GToiletteSubscriptionDataBuilder
    implements
        Builder<GToiletteSubscriptionData, GToiletteSubscriptionDataBuilder> {
  _$GToiletteSubscriptionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToiletteSubscriptionData_doorStateUpdatedBuilder? _doorStateUpdated;
  GToiletteSubscriptionData_doorStateUpdatedBuilder get doorStateUpdated =>
      _$this._doorStateUpdated ??=
          new GToiletteSubscriptionData_doorStateUpdatedBuilder();
  set doorStateUpdated(
          GToiletteSubscriptionData_doorStateUpdatedBuilder?
              doorStateUpdated) =>
      _$this._doorStateUpdated = doorStateUpdated;

  GToiletteSubscriptionDataBuilder() {
    GToiletteSubscriptionData._initializeBuilder(this);
  }

  GToiletteSubscriptionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _doorStateUpdated = $v.doorStateUpdated.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToiletteSubscriptionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToiletteSubscriptionData;
  }

  @override
  void update(void Function(GToiletteSubscriptionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToiletteSubscriptionData build() => _build();

  _$GToiletteSubscriptionData _build() {
    _$GToiletteSubscriptionData _$result;
    try {
      _$result = _$v ??
          new _$GToiletteSubscriptionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GToiletteSubscriptionData', 'G__typename'),
              doorStateUpdated: doorStateUpdated.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'doorStateUpdated';
        doorStateUpdated.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToiletteSubscriptionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToiletteSubscriptionData_doorStateUpdated
    extends GToiletteSubscriptionData_doorStateUpdated {
  @override
  final String G__typename;
  @override
  final _i2.GUuid id;
  @override
  final String name;
  @override
  final bool doorIsOpen;
  @override
  final bool isLocked;
  @override
  final bool isMaintenance;

  factory _$GToiletteSubscriptionData_doorStateUpdated(
          [void Function(GToiletteSubscriptionData_doorStateUpdatedBuilder)?
              updates]) =>
      (new GToiletteSubscriptionData_doorStateUpdatedBuilder()..update(updates))
          ._build();

  _$GToiletteSubscriptionData_doorStateUpdated._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.doorIsOpen,
      required this.isLocked,
      required this.isMaintenance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToiletteSubscriptionData_doorStateUpdated', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToiletteSubscriptionData_doorStateUpdated', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GToiletteSubscriptionData_doorStateUpdated', 'name');
    BuiltValueNullFieldError.checkNotNull(doorIsOpen,
        r'GToiletteSubscriptionData_doorStateUpdated', 'doorIsOpen');
    BuiltValueNullFieldError.checkNotNull(
        isLocked, r'GToiletteSubscriptionData_doorStateUpdated', 'isLocked');
    BuiltValueNullFieldError.checkNotNull(isMaintenance,
        r'GToiletteSubscriptionData_doorStateUpdated', 'isMaintenance');
  }

  @override
  GToiletteSubscriptionData_doorStateUpdated rebuild(
          void Function(GToiletteSubscriptionData_doorStateUpdatedBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToiletteSubscriptionData_doorStateUpdatedBuilder toBuilder() =>
      new GToiletteSubscriptionData_doorStateUpdatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToiletteSubscriptionData_doorStateUpdated &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        doorIsOpen == other.doorIsOpen &&
        isLocked == other.isLocked &&
        isMaintenance == other.isMaintenance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, doorIsOpen.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, isMaintenance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToiletteSubscriptionData_doorStateUpdated')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('doorIsOpen', doorIsOpen)
          ..add('isLocked', isLocked)
          ..add('isMaintenance', isMaintenance))
        .toString();
  }
}

class GToiletteSubscriptionData_doorStateUpdatedBuilder
    implements
        Builder<GToiletteSubscriptionData_doorStateUpdated,
            GToiletteSubscriptionData_doorStateUpdatedBuilder> {
  _$GToiletteSubscriptionData_doorStateUpdated? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUuidBuilder? _id;
  _i2.GUuidBuilder get id => _$this._id ??= new _i2.GUuidBuilder();
  set id(_i2.GUuidBuilder? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _doorIsOpen;
  bool? get doorIsOpen => _$this._doorIsOpen;
  set doorIsOpen(bool? doorIsOpen) => _$this._doorIsOpen = doorIsOpen;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  bool? _isMaintenance;
  bool? get isMaintenance => _$this._isMaintenance;
  set isMaintenance(bool? isMaintenance) =>
      _$this._isMaintenance = isMaintenance;

  GToiletteSubscriptionData_doorStateUpdatedBuilder() {
    GToiletteSubscriptionData_doorStateUpdated._initializeBuilder(this);
  }

  GToiletteSubscriptionData_doorStateUpdatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _name = $v.name;
      _doorIsOpen = $v.doorIsOpen;
      _isLocked = $v.isLocked;
      _isMaintenance = $v.isMaintenance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToiletteSubscriptionData_doorStateUpdated other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToiletteSubscriptionData_doorStateUpdated;
  }

  @override
  void update(
      void Function(GToiletteSubscriptionData_doorStateUpdatedBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToiletteSubscriptionData_doorStateUpdated build() => _build();

  _$GToiletteSubscriptionData_doorStateUpdated _build() {
    _$GToiletteSubscriptionData_doorStateUpdated _$result;
    try {
      _$result = _$v ??
          new _$GToiletteSubscriptionData_doorStateUpdated._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GToiletteSubscriptionData_doorStateUpdated', 'G__typename'),
              id: id.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GToiletteSubscriptionData_doorStateUpdated', 'name'),
              doorIsOpen: BuiltValueNullFieldError.checkNotNull(doorIsOpen,
                  r'GToiletteSubscriptionData_doorStateUpdated', 'doorIsOpen'),
              isLocked: BuiltValueNullFieldError.checkNotNull(isLocked,
                  r'GToiletteSubscriptionData_doorStateUpdated', 'isLocked'),
              isMaintenance: BuiltValueNullFieldError.checkNotNull(
                  isMaintenance,
                  r'GToiletteSubscriptionData_doorStateUpdated',
                  'isMaintenance'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToiletteSubscriptionData_doorStateUpdated',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
