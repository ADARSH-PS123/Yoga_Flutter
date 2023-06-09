// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entroll_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntrollEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) entroll,
    required TResult Function() getlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Entroll value) entroll,
    required TResult Function(_Getlist value) getlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntrollEventCopyWith<$Res> {
  factory $EntrollEventCopyWith(
          EntrollEvent value, $Res Function(EntrollEvent) then) =
      _$EntrollEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntrollEventCopyWithImpl<$Res> implements $EntrollEventCopyWith<$Res> {
  _$EntrollEventCopyWithImpl(this._value, this._then);

  final EntrollEvent _value;
  // ignore: unused_field
  final $Res Function(EntrollEvent) _then;
}

/// @nodoc
abstract class _$$_EntrollCopyWith<$Res> {
  factory _$$_EntrollCopyWith(
          _$_Entroll value, $Res Function(_$_Entroll) then) =
      __$$_EntrollCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$$_EntrollCopyWithImpl<$Res> extends _$EntrollEventCopyWithImpl<$Res>
    implements _$$_EntrollCopyWith<$Res> {
  __$$_EntrollCopyWithImpl(_$_Entroll _value, $Res Function(_$_Entroll) _then)
      : super(_value, (v) => _then(v as _$_Entroll));

  @override
  _$_Entroll get _value => super._value as _$_Entroll;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_Entroll(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Entroll implements _Entroll {
  const _$_Entroll({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'EntrollEvent.entroll(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Entroll &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_EntrollCopyWith<_$_Entroll> get copyWith =>
      __$$_EntrollCopyWithImpl<_$_Entroll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) entroll,
    required TResult Function() getlist,
  }) {
    return entroll(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
  }) {
    return entroll?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
    required TResult orElse(),
  }) {
    if (entroll != null) {
      return entroll(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Entroll value) entroll,
    required TResult Function(_Getlist value) getlist,
  }) {
    return entroll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
  }) {
    return entroll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
    required TResult orElse(),
  }) {
    if (entroll != null) {
      return entroll(this);
    }
    return orElse();
  }
}

abstract class _Entroll implements EntrollEvent {
  const factory _Entroll({required final String id}) = _$_Entroll;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EntrollCopyWith<_$_Entroll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetlistCopyWith<$Res> {
  factory _$$_GetlistCopyWith(
          _$_Getlist value, $Res Function(_$_Getlist) then) =
      __$$_GetlistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetlistCopyWithImpl<$Res> extends _$EntrollEventCopyWithImpl<$Res>
    implements _$$_GetlistCopyWith<$Res> {
  __$$_GetlistCopyWithImpl(_$_Getlist _value, $Res Function(_$_Getlist) _then)
      : super(_value, (v) => _then(v as _$_Getlist));

  @override
  _$_Getlist get _value => super._value as _$_Getlist;
}

/// @nodoc

class _$_Getlist implements _Getlist {
  const _$_Getlist();

  @override
  String toString() {
    return 'EntrollEvent.getlist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Getlist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) entroll,
    required TResult Function() getlist,
  }) {
    return getlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
  }) {
    return getlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
    required TResult orElse(),
  }) {
    if (getlist != null) {
      return getlist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Entroll value) entroll,
    required TResult Function(_Getlist value) getlist,
  }) {
    return getlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
  }) {
    return getlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
    required TResult orElse(),
  }) {
    if (getlist != null) {
      return getlist(this);
    }
    return orElse();
  }
}

abstract class _Getlist implements EntrollEvent {
  const factory _Getlist() = _$_Getlist;
}

/// @nodoc
mixin _$EntrollState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get hasmpinValidationData => throw _privateConstructorUsedError;
  Entroll? get entrollhDetails => throw _privateConstructorUsedError;
  GetList? get getlist => throw _privateConstructorUsedError;
  bool get listLoding => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntrollStateCopyWith<EntrollState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntrollStateCopyWith<$Res> {
  factory $EntrollStateCopyWith(
          EntrollState value, $Res Function(EntrollState) then) =
      _$EntrollStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isError,
      bool hasmpinValidationData,
      Entroll? entrollhDetails,
      GetList? getlist,
      bool listLoding});
}

/// @nodoc
class _$EntrollStateCopyWithImpl<$Res> implements $EntrollStateCopyWith<$Res> {
  _$EntrollStateCopyWithImpl(this._value, this._then);

  final EntrollState _value;
  // ignore: unused_field
  final $Res Function(EntrollState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? hasmpinValidationData = freezed,
    Object? entrollhDetails = freezed,
    Object? getlist = freezed,
    Object? listLoding = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasmpinValidationData: hasmpinValidationData == freezed
          ? _value.hasmpinValidationData
          : hasmpinValidationData // ignore: cast_nullable_to_non_nullable
              as bool,
      entrollhDetails: entrollhDetails == freezed
          ? _value.entrollhDetails
          : entrollhDetails // ignore: cast_nullable_to_non_nullable
              as Entroll?,
      getlist: getlist == freezed
          ? _value.getlist
          : getlist // ignore: cast_nullable_to_non_nullable
              as GetList?,
      listLoding: listLoding == freezed
          ? _value.listLoding
          : listLoding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_EntrollStateCopyWith<$Res>
    implements $EntrollStateCopyWith<$Res> {
  factory _$$_EntrollStateCopyWith(
          _$_EntrollState value, $Res Function(_$_EntrollState) then) =
      __$$_EntrollStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isError,
      bool hasmpinValidationData,
      Entroll? entrollhDetails,
      GetList? getlist,
      bool listLoding});
}

/// @nodoc
class __$$_EntrollStateCopyWithImpl<$Res>
    extends _$EntrollStateCopyWithImpl<$Res>
    implements _$$_EntrollStateCopyWith<$Res> {
  __$$_EntrollStateCopyWithImpl(
      _$_EntrollState _value, $Res Function(_$_EntrollState) _then)
      : super(_value, (v) => _then(v as _$_EntrollState));

  @override
  _$_EntrollState get _value => super._value as _$_EntrollState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? hasmpinValidationData = freezed,
    Object? entrollhDetails = freezed,
    Object? getlist = freezed,
    Object? listLoding = freezed,
  }) {
    return _then(_$_EntrollState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasmpinValidationData: hasmpinValidationData == freezed
          ? _value.hasmpinValidationData
          : hasmpinValidationData // ignore: cast_nullable_to_non_nullable
              as bool,
      entrollhDetails: entrollhDetails == freezed
          ? _value.entrollhDetails
          : entrollhDetails // ignore: cast_nullable_to_non_nullable
              as Entroll?,
      getlist: getlist == freezed
          ? _value.getlist
          : getlist // ignore: cast_nullable_to_non_nullable
              as GetList?,
      listLoding: listLoding == freezed
          ? _value.listLoding
          : listLoding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EntrollState implements _EntrollState {
  const _$_EntrollState(
      {required this.isLoading,
      required this.isError,
      required this.hasmpinValidationData,
      required this.entrollhDetails,
      required this.getlist,
      required this.listLoding});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool hasmpinValidationData;
  @override
  final Entroll? entrollhDetails;
  @override
  final GetList? getlist;
  @override
  final bool listLoding;

  @override
  String toString() {
    return 'EntrollState(isLoading: $isLoading, isError: $isError, hasmpinValidationData: $hasmpinValidationData, entrollhDetails: $entrollhDetails, getlist: $getlist, listLoding: $listLoding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntrollState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.hasmpinValidationData, hasmpinValidationData) &&
            const DeepCollectionEquality()
                .equals(other.entrollhDetails, entrollhDetails) &&
            const DeepCollectionEquality().equals(other.getlist, getlist) &&
            const DeepCollectionEquality()
                .equals(other.listLoding, listLoding));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(hasmpinValidationData),
      const DeepCollectionEquality().hash(entrollhDetails),
      const DeepCollectionEquality().hash(getlist),
      const DeepCollectionEquality().hash(listLoding));

  @JsonKey(ignore: true)
  @override
  _$$_EntrollStateCopyWith<_$_EntrollState> get copyWith =>
      __$$_EntrollStateCopyWithImpl<_$_EntrollState>(this, _$identity);
}

abstract class _EntrollState implements EntrollState {
  const factory _EntrollState(
      {required final bool isLoading,
      required final bool isError,
      required final bool hasmpinValidationData,
      required final Entroll? entrollhDetails,
      required final GetList? getlist,
      required final bool listLoding}) = _$_EntrollState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  bool get hasmpinValidationData => throw _privateConstructorUsedError;
  @override
  Entroll? get entrollhDetails => throw _privateConstructorUsedError;
  @override
  GetList? get getlist => throw _privateConstructorUsedError;
  @override
  bool get listLoding => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EntrollStateCopyWith<_$_EntrollState> get copyWith =>
      throw _privateConstructorUsedError;
}
