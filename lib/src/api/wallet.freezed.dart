// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$XelisAssetMetadata {
  String get name;
  String get ticker;
  int get decimals;
  BigInt get maxSupply;
  XelisAssetOwner? get owner;

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $XelisAssetMetadataCopyWith<XelisAssetMetadata> get copyWith =>
      _$XelisAssetMetadataCopyWithImpl<XelisAssetMetadata>(
          this as XelisAssetMetadata, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XelisAssetMetadata &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.maxSupply, maxSupply) ||
                other.maxSupply == maxSupply) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, ticker, decimals, maxSupply, owner);

  @override
  String toString() {
    return 'XelisAssetMetadata(name: $name, ticker: $ticker, decimals: $decimals, maxSupply: $maxSupply, owner: $owner)';
  }
}

/// @nodoc
abstract mixin class $XelisAssetMetadataCopyWith<$Res> {
  factory $XelisAssetMetadataCopyWith(
          XelisAssetMetadata value, $Res Function(XelisAssetMetadata) _then) =
      _$XelisAssetMetadataCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String ticker,
      int decimals,
      BigInt maxSupply,
      XelisAssetOwner? owner});

  $XelisAssetOwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$XelisAssetMetadataCopyWithImpl<$Res>
    implements $XelisAssetMetadataCopyWith<$Res> {
  _$XelisAssetMetadataCopyWithImpl(this._self, this._then);

  final XelisAssetMetadata _self;
  final $Res Function(XelisAssetMetadata) _then;

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ticker = null,
    Object? decimals = null,
    Object? maxSupply = null,
    Object? owner = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _self.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _self.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      maxSupply: null == maxSupply
          ? _self.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as BigInt,
      owner: freezed == owner
          ? _self.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as XelisAssetOwner?,
    ));
  }

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $XelisAssetOwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
      return null;
    }

    return $XelisAssetOwnerCopyWith<$Res>(_self.owner!, (value) {
      return _then(_self.copyWith(owner: value));
    });
  }
}

/// @nodoc

class _XelisAssetMetadata implements XelisAssetMetadata {
  const _XelisAssetMetadata(
      {required this.name,
      required this.ticker,
      required this.decimals,
      required this.maxSupply,
      this.owner});

  @override
  final String name;
  @override
  final String ticker;
  @override
  final int decimals;
  @override
  final BigInt maxSupply;
  @override
  final XelisAssetOwner? owner;

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$XelisAssetMetadataCopyWith<_XelisAssetMetadata> get copyWith =>
      __$XelisAssetMetadataCopyWithImpl<_XelisAssetMetadata>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _XelisAssetMetadata &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.maxSupply, maxSupply) ||
                other.maxSupply == maxSupply) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, ticker, decimals, maxSupply, owner);

  @override
  String toString() {
    return 'XelisAssetMetadata(name: $name, ticker: $ticker, decimals: $decimals, maxSupply: $maxSupply, owner: $owner)';
  }
}

/// @nodoc
abstract mixin class _$XelisAssetMetadataCopyWith<$Res>
    implements $XelisAssetMetadataCopyWith<$Res> {
  factory _$XelisAssetMetadataCopyWith(
          _XelisAssetMetadata value, $Res Function(_XelisAssetMetadata) _then) =
      __$XelisAssetMetadataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String ticker,
      int decimals,
      BigInt maxSupply,
      XelisAssetOwner? owner});

  @override
  $XelisAssetOwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$XelisAssetMetadataCopyWithImpl<$Res>
    implements _$XelisAssetMetadataCopyWith<$Res> {
  __$XelisAssetMetadataCopyWithImpl(this._self, this._then);

  final _XelisAssetMetadata _self;
  final $Res Function(_XelisAssetMetadata) _then;

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? ticker = null,
    Object? decimals = null,
    Object? maxSupply = null,
    Object? owner = freezed,
  }) {
    return _then(_XelisAssetMetadata(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _self.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _self.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      maxSupply: null == maxSupply
          ? _self.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as BigInt,
      owner: freezed == owner
          ? _self.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as XelisAssetOwner?,
    ));
  }

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $XelisAssetOwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
      return null;
    }

    return $XelisAssetOwnerCopyWith<$Res>(_self.owner!, (value) {
      return _then(_self.copyWith(owner: value));
    });
  }
}

/// @nodoc
mixin _$XelisAssetOwner {
  String get contract;
  BigInt get id;

  /// Create a copy of XelisAssetOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $XelisAssetOwnerCopyWith<XelisAssetOwner> get copyWith =>
      _$XelisAssetOwnerCopyWithImpl<XelisAssetOwner>(
          this as XelisAssetOwner, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XelisAssetOwner &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contract, id);

  @override
  String toString() {
    return 'XelisAssetOwner(contract: $contract, id: $id)';
  }
}

/// @nodoc
abstract mixin class $XelisAssetOwnerCopyWith<$Res> {
  factory $XelisAssetOwnerCopyWith(
          XelisAssetOwner value, $Res Function(XelisAssetOwner) _then) =
      _$XelisAssetOwnerCopyWithImpl;
  @useResult
  $Res call({String contract, BigInt id});
}

/// @nodoc
class _$XelisAssetOwnerCopyWithImpl<$Res>
    implements $XelisAssetOwnerCopyWith<$Res> {
  _$XelisAssetOwnerCopyWithImpl(this._self, this._then);

  final XelisAssetOwner _self;
  final $Res Function(XelisAssetOwner) _then;

  /// Create a copy of XelisAssetOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contract = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      contract: null == contract
          ? _self.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _XelisAssetOwner implements XelisAssetOwner {
  const _XelisAssetOwner({required this.contract, required this.id});

  @override
  final String contract;
  @override
  final BigInt id;

  /// Create a copy of XelisAssetOwner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$XelisAssetOwnerCopyWith<_XelisAssetOwner> get copyWith =>
      __$XelisAssetOwnerCopyWithImpl<_XelisAssetOwner>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _XelisAssetOwner &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contract, id);

  @override
  String toString() {
    return 'XelisAssetOwner(contract: $contract, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$XelisAssetOwnerCopyWith<$Res>
    implements $XelisAssetOwnerCopyWith<$Res> {
  factory _$XelisAssetOwnerCopyWith(
          _XelisAssetOwner value, $Res Function(_XelisAssetOwner) _then) =
      __$XelisAssetOwnerCopyWithImpl;
  @override
  @useResult
  $Res call({String contract, BigInt id});
}

/// @nodoc
class __$XelisAssetOwnerCopyWithImpl<$Res>
    implements _$XelisAssetOwnerCopyWith<$Res> {
  __$XelisAssetOwnerCopyWithImpl(this._self, this._then);

  final _XelisAssetOwner _self;
  final $Res Function(_XelisAssetOwner) _then;

  /// Create a copy of XelisAssetOwner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contract = null,
    Object? id = null,
  }) {
    return _then(_XelisAssetOwner(
      contract: null == contract
          ? _self.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

// dart format on
