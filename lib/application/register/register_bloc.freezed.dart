// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String name,
            String userType, String mobile)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, String name,
            String userType, String mobile)?
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String name,
            String userType, String mobile)?
        register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterValidation value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterValidation value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterValidation value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String name,
      String userType,
      String mobile});
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? userType = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterValidationCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$_RegisterValidationCopyWith(_$_RegisterValidation value,
          $Res Function(_$_RegisterValidation) then) =
      __$$_RegisterValidationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String name,
      String userType,
      String mobile});
}

/// @nodoc
class __$$_RegisterValidationCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_RegisterValidationCopyWith<$Res> {
  __$$_RegisterValidationCopyWithImpl(
      _$_RegisterValidation _value, $Res Function(_$_RegisterValidation) _then)
      : super(_value, (v) => _then(v as _$_RegisterValidation));

  @override
  _$_RegisterValidation get _value => super._value as _$_RegisterValidation;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? userType = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_$_RegisterValidation(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterValidation implements _RegisterValidation {
  const _$_RegisterValidation(
      {required this.email,
      required this.password,
      required this.name,
      required this.userType,
      required this.mobile});

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String userType;
  @override
  final String mobile;

  @override
  String toString() {
    return 'RegisterEvent.register(email: $email, password: $password, name: $name, userType: $userType, mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterValidation &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality().equals(other.mobile, mobile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(userType),
      const DeepCollectionEquality().hash(mobile));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterValidationCopyWith<_$_RegisterValidation> get copyWith =>
      __$$_RegisterValidationCopyWithImpl<_$_RegisterValidation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String name,
            String userType, String mobile)
        register,
  }) {
    return register(email, password, name, userType, mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, String name,
            String userType, String mobile)?
        register,
  }) {
    return register?.call(email, password, name, userType, mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String name,
            String userType, String mobile)?
        register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, name, userType, mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterValidation value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterValidation value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterValidation value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _RegisterValidation implements RegisterEvent {
  const factory _RegisterValidation(
      {required final String email,
      required final String password,
      required final String name,
      required final String userType,
      required final String mobile}) = _$_RegisterValidation;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get userType => throw _privateConstructorUsedError;
  @override
  String get mobile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterValidationCopyWith<_$_RegisterValidation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get hasmpinValidationData => throw _privateConstructorUsedError;
  RegisterResponse? get authDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isError,
      bool hasmpinValidationData,
      RegisterResponse? authDetails});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? hasmpinValidationData = freezed,
    Object? authDetails = freezed,
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
      authDetails: authDetails == freezed
          ? _value.authDetails
          : authDetails // ignore: cast_nullable_to_non_nullable
              as RegisterResponse?,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isError,
      bool hasmpinValidationData,
      RegisterResponse? authDetails});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, (v) => _then(v as _$_RegisterState));

  @override
  _$_RegisterState get _value => super._value as _$_RegisterState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? hasmpinValidationData = freezed,
    Object? authDetails = freezed,
  }) {
    return _then(_$_RegisterState(
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
      authDetails: authDetails == freezed
          ? _value.authDetails
          : authDetails // ignore: cast_nullable_to_non_nullable
              as RegisterResponse?,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {required this.isLoading,
      required this.isError,
      required this.hasmpinValidationData,
      required this.authDetails});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool hasmpinValidationData;
  @override
  final RegisterResponse? authDetails;

  @override
  String toString() {
    return 'RegisterState(isLoading: $isLoading, isError: $isError, hasmpinValidationData: $hasmpinValidationData, authDetails: $authDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.hasmpinValidationData, hasmpinValidationData) &&
            const DeepCollectionEquality()
                .equals(other.authDetails, authDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(hasmpinValidationData),
      const DeepCollectionEquality().hash(authDetails));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {required final bool isLoading,
      required final bool isError,
      required final bool hasmpinValidationData,
      required final RegisterResponse? authDetails}) = _$_RegisterState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  bool get hasmpinValidationData => throw _privateConstructorUsedError;
  @override
  RegisterResponse? get authDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
