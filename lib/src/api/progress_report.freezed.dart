// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Report {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String step, String? message)
    tableGeneration,
    required TResult Function(String? message) misc,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String step, String? message)?
    tableGeneration,
    TResult? Function(String? message)? misc,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String step, String? message)?
    tableGeneration,
    TResult Function(String? message)? misc,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Report_TableGeneration value) tableGeneration,
    required TResult Function(Report_Misc value) misc,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Report_TableGeneration value)? tableGeneration,
    TResult? Function(Report_Misc value)? misc,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Report_TableGeneration value)? tableGeneration,
    TResult Function(Report_Misc value)? misc,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _value.copyWith(
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Report_TableGenerationImplCopyWith<$Res>
    implements $ReportCopyWith<$Res> {
  factory _$$Report_TableGenerationImplCopyWith(
    _$Report_TableGenerationImpl value,
    $Res Function(_$Report_TableGenerationImpl) then,
  ) = __$$Report_TableGenerationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double progress, String step, String? message});
}

/// @nodoc
class __$$Report_TableGenerationImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$Report_TableGenerationImpl>
    implements _$$Report_TableGenerationImplCopyWith<$Res> {
  __$$Report_TableGenerationImplCopyWithImpl(
    _$Report_TableGenerationImpl _value,
    $Res Function(_$Report_TableGenerationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? step = null,
    Object? message = freezed,
  }) {
    return _then(
      _$Report_TableGenerationImpl(
        progress:
            null == progress
                ? _value.progress
                : progress // ignore: cast_nullable_to_non_nullable
                    as double,
        step:
            null == step
                ? _value.step
                : step // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$Report_TableGenerationImpl extends Report_TableGeneration {
  const _$Report_TableGenerationImpl({
    required this.progress,
    required this.step,
    this.message,
  }) : super._();

  @override
  final double progress;
  @override
  final String step;
  @override
  final String? message;

  @override
  String toString() {
    return 'Report.tableGeneration(progress: $progress, step: $step, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Report_TableGenerationImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, step, message);

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Report_TableGenerationImplCopyWith<_$Report_TableGenerationImpl>
  get copyWith =>
      __$$Report_TableGenerationImplCopyWithImpl<_$Report_TableGenerationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String step, String? message)
    tableGeneration,
    required TResult Function(String? message) misc,
  }) {
    return tableGeneration(progress, step, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String step, String? message)?
    tableGeneration,
    TResult? Function(String? message)? misc,
  }) {
    return tableGeneration?.call(progress, step, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String step, String? message)?
    tableGeneration,
    TResult Function(String? message)? misc,
    required TResult orElse(),
  }) {
    if (tableGeneration != null) {
      return tableGeneration(progress, step, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Report_TableGeneration value) tableGeneration,
    required TResult Function(Report_Misc value) misc,
  }) {
    return tableGeneration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Report_TableGeneration value)? tableGeneration,
    TResult? Function(Report_Misc value)? misc,
  }) {
    return tableGeneration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Report_TableGeneration value)? tableGeneration,
    TResult Function(Report_Misc value)? misc,
    required TResult orElse(),
  }) {
    if (tableGeneration != null) {
      return tableGeneration(this);
    }
    return orElse();
  }
}

abstract class Report_TableGeneration extends Report {
  const factory Report_TableGeneration({
    required final double progress,
    required final String step,
    final String? message,
  }) = _$Report_TableGenerationImpl;
  const Report_TableGeneration._() : super._();

  double get progress;
  String get step;
  @override
  String? get message;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Report_TableGenerationImplCopyWith<_$Report_TableGenerationImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Report_MiscImplCopyWith<$Res>
    implements $ReportCopyWith<$Res> {
  factory _$$Report_MiscImplCopyWith(
    _$Report_MiscImpl value,
    $Res Function(_$Report_MiscImpl) then,
  ) = __$$Report_MiscImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$Report_MiscImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$Report_MiscImpl>
    implements _$$Report_MiscImplCopyWith<$Res> {
  __$$Report_MiscImplCopyWithImpl(
    _$Report_MiscImpl _value,
    $Res Function(_$Report_MiscImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$Report_MiscImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$Report_MiscImpl extends Report_Misc {
  const _$Report_MiscImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Report.misc(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Report_MiscImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Report_MiscImplCopyWith<_$Report_MiscImpl> get copyWith =>
      __$$Report_MiscImplCopyWithImpl<_$Report_MiscImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress, String step, String? message)
    tableGeneration,
    required TResult Function(String? message) misc,
  }) {
    return misc(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double progress, String step, String? message)?
    tableGeneration,
    TResult? Function(String? message)? misc,
  }) {
    return misc?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress, String step, String? message)?
    tableGeneration,
    TResult Function(String? message)? misc,
    required TResult orElse(),
  }) {
    if (misc != null) {
      return misc(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Report_TableGeneration value) tableGeneration,
    required TResult Function(Report_Misc value) misc,
  }) {
    return misc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Report_TableGeneration value)? tableGeneration,
    TResult? Function(Report_Misc value)? misc,
  }) {
    return misc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Report_TableGeneration value)? tableGeneration,
    TResult Function(Report_Misc value)? misc,
    required TResult orElse(),
  }) {
    if (misc != null) {
      return misc(this);
    }
    return orElse();
  }
}

abstract class Report_Misc extends Report {
  const factory Report_Misc({final String? message}) = _$Report_MiscImpl;
  const Report_Misc._() : super._();

  @override
  String? get message;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Report_MiscImplCopyWith<_$Report_MiscImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
