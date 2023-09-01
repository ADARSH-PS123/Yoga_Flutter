// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'programms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgrammsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProgramms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProgramms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProgramms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrograms value) getProgramms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrograms value)? getProgramms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrograms value)? getProgramms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgrammsEventCopyWith<$Res> {
  factory $ProgrammsEventCopyWith(
          ProgrammsEvent value, $Res Function(ProgrammsEvent) then) =
      _$ProgrammsEventCopyWithImpl<$Res, ProgrammsEvent>;
}

/// @nodoc
class _$ProgrammsEventCopyWithImpl<$Res, $Val extends ProgrammsEvent>
    implements $ProgrammsEventCopyWith<$Res> {
  _$ProgrammsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetProgramsCopyWith<$Res> {
  factory _$$_GetProgramsCopyWith(
          _$_GetPrograms value, $Res Function(_$_GetPrograms) then) =
      __$$_GetProgramsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProgramsCopyWithImpl<$Res>
    extends _$ProgrammsEventCopyWithImpl<$Res, _$_GetPrograms>
    implements _$$_GetProgramsCopyWith<$Res> {
  __$$_GetProgramsCopyWithImpl(
      _$_GetPrograms _value, $Res Function(_$_GetPrograms) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPrograms implements _GetPrograms {
  const _$_GetPrograms();

  @override
  String toString() {
    return 'ProgrammsEvent.getProgramms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetPrograms);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProgramms,
  }) {
    return getProgramms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProgramms,
  }) {
    return getProgramms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProgramms,
    required TResult orElse(),
  }) {
    if (getProgramms != null) {
      return getProgramms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrograms value) getProgramms,
  }) {
    return getProgramms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrograms value)? getProgramms,
  }) {
    return getProgramms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrograms value)? getProgramms,
    required TResult orElse(),
  }) {
    if (getProgramms != null) {
      return getProgramms(this);
    }
    return orElse();
  }
}

abstract class _GetPrograms implements ProgrammsEvent {
  const factory _GetPrograms() = _$_GetPrograms;
}

/// @nodoc
mixin _$ProgrammsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isData => throw _privateConstructorUsedError;
  Programs? get programmsDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgrammsStateCopyWith<ProgrammsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgrammsStateCopyWith<$Res> {
  factory $ProgrammsStateCopyWith(
          ProgrammsState value, $Res Function(ProgrammsState) then) =
      _$ProgrammsStateCopyWithImpl<$Res, ProgrammsState>;
  @useResult
  $Res call(
      {bool isLoading, bool isError, bool isData, Programs? programmsDetails});
}

/// @nodoc
class _$ProgrammsStateCopyWithImpl<$Res, $Val extends ProgrammsState>
    implements $ProgrammsStateCopyWith<$Res> {
  _$ProgrammsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isData = null,
    Object? programmsDetails = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isData: null == isData
          ? _value.isData
          : isData // ignore: cast_nullable_to_non_nullable
              as bool,
      programmsDetails: freezed == programmsDetails
          ? _value.programmsDetails
          : programmsDetails // ignore: cast_nullable_to_non_nullable
              as Programs?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProgrammsStateCopyWith<$Res>
    implements $ProgrammsStateCopyWith<$Res> {
  factory _$$_ProgrammsStateCopyWith(
          _$_ProgrammsState value, $Res Function(_$_ProgrammsState) then) =
      __$$_ProgrammsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool isError, bool isData, Programs? programmsDetails});
}

/// @nodoc
class __$$_ProgrammsStateCopyWithImpl<$Res>
    extends _$ProgrammsStateCopyWithImpl<$Res, _$_ProgrammsState>
    implements _$$_ProgrammsStateCopyWith<$Res> {
  __$$_ProgrammsStateCopyWithImpl(
      _$_ProgrammsState _value, $Res Function(_$_ProgrammsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isData = null,
    Object? programmsDetails = freezed,
  }) {
    return _then(_$_ProgrammsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isData: null == isData
          ? _value.isData
          : isData // ignore: cast_nullable_to_non_nullable
              as bool,
      programmsDetails: freezed == programmsDetails
          ? _value.programmsDetails
          : programmsDetails // ignore: cast_nullable_to_non_nullable
              as Programs?,
    ));
  }
}

/// @nodoc

class _$_ProgrammsState implements _ProgrammsState {
  const _$_ProgrammsState(
      {required this.isLoading,
      required this.isError,
      required this.isData,
      required this.programmsDetails});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isData;
  @override
  final Programs? programmsDetails;

  @override
  String toString() {
    return 'ProgrammsState(isLoading: $isLoading, isError: $isError, isData: $isData, programmsDetails: $programmsDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgrammsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isData, isData) || other.isData == isData) &&
            (identical(other.programmsDetails, programmsDetails) ||
                other.programmsDetails == programmsDetails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, isData, programmsDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgrammsStateCopyWith<_$_ProgrammsState> get copyWith =>
      __$$_ProgrammsStateCopyWithImpl<_$_ProgrammsState>(this, _$identity);
}

abstract class _ProgrammsState implements ProgrammsState {
  const factory _ProgrammsState(
      {required final bool isLoading,
      required final bool isError,
      required final bool isData,
      required final Programs? programmsDetails}) = _$_ProgrammsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isData;
  @override
  Programs? get programmsDetails;
  @override
  @JsonKey(ignore: true)
  _$$_ProgrammsStateCopyWith<_$_ProgrammsState> get copyWith =>
      throw _privateConstructorUsedError;
}
