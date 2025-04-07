// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$XelisAssetMetadata {
  String get name => throw _privateConstructorUsedError;
  String get ticker => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;
  BigInt get maxSupply => throw _privateConstructorUsedError;

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $XelisAssetMetadataCopyWith<XelisAssetMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XelisAssetMetadataCopyWith<$Res> {
  factory $XelisAssetMetadataCopyWith(
          XelisAssetMetadata value, $Res Function(XelisAssetMetadata) then) =
      _$XelisAssetMetadataCopyWithImpl<$Res, XelisAssetMetadata>;
  @useResult
  $Res call({String name, String ticker, int decimals, BigInt maxSupply});
}

/// @nodoc
class _$XelisAssetMetadataCopyWithImpl<$Res, $Val extends XelisAssetMetadata>
    implements $XelisAssetMetadataCopyWith<$Res> {
  _$XelisAssetMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ticker = null,
    Object? decimals = null,
    Object? maxSupply = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      maxSupply: null == maxSupply
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$XelisAssetMetadataImplCopyWith<$Res>
    implements $XelisAssetMetadataCopyWith<$Res> {
  factory _$$XelisAssetMetadataImplCopyWith(_$XelisAssetMetadataImpl value,
          $Res Function(_$XelisAssetMetadataImpl) then) =
      __$$XelisAssetMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String ticker, int decimals, BigInt maxSupply});
}

/// @nodoc
class __$$XelisAssetMetadataImplCopyWithImpl<$Res>
    extends _$XelisAssetMetadataCopyWithImpl<$Res, _$XelisAssetMetadataImpl>
    implements _$$XelisAssetMetadataImplCopyWith<$Res> {
  __$$XelisAssetMetadataImplCopyWithImpl(_$XelisAssetMetadataImpl _value,
      $Res Function(_$XelisAssetMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ticker = null,
    Object? decimals = null,
    Object? maxSupply = null,
  }) {
    return _then(_$XelisAssetMetadataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      maxSupply: null == maxSupply
          ? _value.maxSupply
          : maxSupply // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$XelisAssetMetadataImpl implements _XelisAssetMetadata {
  const _$XelisAssetMetadataImpl(
      {required this.name,
      required this.ticker,
      required this.decimals,
      required this.maxSupply});

  @override
  final String name;
  @override
  final String ticker;
  @override
  final int decimals;
  @override
  final BigInt maxSupply;

  @override
  String toString() {
    return 'XelisAssetMetadata(name: $name, ticker: $ticker, decimals: $decimals, maxSupply: $maxSupply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XelisAssetMetadataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.maxSupply, maxSupply) ||
                other.maxSupply == maxSupply));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, ticker, decimals, maxSupply);

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XelisAssetMetadataImplCopyWith<_$XelisAssetMetadataImpl> get copyWith =>
      __$$XelisAssetMetadataImplCopyWithImpl<_$XelisAssetMetadataImpl>(
          this, _$identity);
}

abstract class _XelisAssetMetadata implements XelisAssetMetadata {
  const factory _XelisAssetMetadata(
      {required final String name,
      required final String ticker,
      required final int decimals,
      required final BigInt maxSupply}) = _$XelisAssetMetadataImpl;

  @override
  String get name;
  @override
  String get ticker;
  @override
  int get decimals;
  @override
  BigInt get maxSupply;

  /// Create a copy of XelisAssetMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XelisAssetMetadataImplCopyWith<_$XelisAssetMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
