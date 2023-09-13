// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    required TResult Function(int amount) paymentIntent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? entroll,
    TResult? Function()? getlist,
    TResult? Function(int amount)? paymentIntent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
    TResult Function(int amount)? paymentIntent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Entroll value) entroll,
    required TResult Function(_Getlist value) getlist,
    required TResult Function(_PaymentIntent value) paymentIntent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Entroll value)? entroll,
    TResult? Function(_Getlist value)? getlist,
    TResult? Function(_PaymentIntent value)? paymentIntent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
    TResult Function(_PaymentIntent value)? paymentIntent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntrollEventCopyWith<$Res> {
  factory $EntrollEventCopyWith(
          EntrollEvent value, $Res Function(EntrollEvent) then) =
      _$EntrollEventCopyWithImpl<$Res, EntrollEvent>;
}

/// @nodoc
class _$EntrollEventCopyWithImpl<$Res, $Val extends EntrollEvent>
    implements $EntrollEventCopyWith<$Res> {
  _$EntrollEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EntrollCopyWith<$Res> {
  factory _$$_EntrollCopyWith(
          _$_Entroll value, $Res Function(_$_Entroll) then) =
      __$$_EntrollCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_EntrollCopyWithImpl<$Res>
    extends _$EntrollEventCopyWithImpl<$Res, _$_Entroll>
    implements _$$_EntrollCopyWith<$Res> {
  __$$_EntrollCopyWithImpl(_$_Entroll _value, $Res Function(_$_Entroll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Entroll(
      id: null == id
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
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntrollCopyWith<_$_Entroll> get copyWith =>
      __$$_EntrollCopyWithImpl<_$_Entroll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) entroll,
    required TResult Function() getlist,
    required TResult Function(int amount) paymentIntent,
  }) {
    return entroll(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? entroll,
    TResult? Function()? getlist,
    TResult? Function(int amount)? paymentIntent,
  }) {
    return entroll?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
    TResult Function(int amount)? paymentIntent,
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
    required TResult Function(_PaymentIntent value) paymentIntent,
  }) {
    return entroll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Entroll value)? entroll,
    TResult? Function(_Getlist value)? getlist,
    TResult? Function(_PaymentIntent value)? paymentIntent,
  }) {
    return entroll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
    TResult Function(_PaymentIntent value)? paymentIntent,
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

  String get id;
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
class __$$_GetlistCopyWithImpl<$Res>
    extends _$EntrollEventCopyWithImpl<$Res, _$_Getlist>
    implements _$$_GetlistCopyWith<$Res> {
  __$$_GetlistCopyWithImpl(_$_Getlist _value, $Res Function(_$_Getlist) _then)
      : super(_value, _then);
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
    required TResult Function(int amount) paymentIntent,
  }) {
    return getlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? entroll,
    TResult? Function()? getlist,
    TResult? Function(int amount)? paymentIntent,
  }) {
    return getlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
    TResult Function(int amount)? paymentIntent,
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
    required TResult Function(_PaymentIntent value) paymentIntent,
  }) {
    return getlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Entroll value)? entroll,
    TResult? Function(_Getlist value)? getlist,
    TResult? Function(_PaymentIntent value)? paymentIntent,
  }) {
    return getlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
    TResult Function(_PaymentIntent value)? paymentIntent,
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
abstract class _$$_PaymentIntentCopyWith<$Res> {
  factory _$$_PaymentIntentCopyWith(
          _$_PaymentIntent value, $Res Function(_$_PaymentIntent) then) =
      __$$_PaymentIntentCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount});
}

/// @nodoc
class __$$_PaymentIntentCopyWithImpl<$Res>
    extends _$EntrollEventCopyWithImpl<$Res, _$_PaymentIntent>
    implements _$$_PaymentIntentCopyWith<$Res> {
  __$$_PaymentIntentCopyWithImpl(
      _$_PaymentIntent _value, $Res Function(_$_PaymentIntent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_PaymentIntent(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PaymentIntent implements _PaymentIntent {
  const _$_PaymentIntent({required this.amount});

  @override
  final int amount;

  @override
  String toString() {
    return 'EntrollEvent.paymentIntent(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentIntent &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentIntentCopyWith<_$_PaymentIntent> get copyWith =>
      __$$_PaymentIntentCopyWithImpl<_$_PaymentIntent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) entroll,
    required TResult Function() getlist,
    required TResult Function(int amount) paymentIntent,
  }) {
    return paymentIntent(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? entroll,
    TResult? Function()? getlist,
    TResult? Function(int amount)? paymentIntent,
  }) {
    return paymentIntent?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? entroll,
    TResult Function()? getlist,
    TResult Function(int amount)? paymentIntent,
    required TResult orElse(),
  }) {
    if (paymentIntent != null) {
      return paymentIntent(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Entroll value) entroll,
    required TResult Function(_Getlist value) getlist,
    required TResult Function(_PaymentIntent value) paymentIntent,
  }) {
    return paymentIntent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Entroll value)? entroll,
    TResult? Function(_Getlist value)? getlist,
    TResult? Function(_PaymentIntent value)? paymentIntent,
  }) {
    return paymentIntent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Entroll value)? entroll,
    TResult Function(_Getlist value)? getlist,
    TResult Function(_PaymentIntent value)? paymentIntent,
    required TResult orElse(),
  }) {
    if (paymentIntent != null) {
      return paymentIntent(this);
    }
    return orElse();
  }
}

abstract class _PaymentIntent implements EntrollEvent {
  const factory _PaymentIntent({required final int amount}) = _$_PaymentIntent;

  int get amount;
  @JsonKey(ignore: true)
  _$$_PaymentIntentCopyWith<_$_PaymentIntent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntrollState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get intentLoading => throw _privateConstructorUsedError;
  bool get intentCreated => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get hasmpinValidationData => throw _privateConstructorUsedError;
  Entroll? get entrollhDetails => throw _privateConstructorUsedError;
  GetList? get getlist => throw _privateConstructorUsedError;
  PaymentInentModel? get intetData => throw _privateConstructorUsedError;
  bool get listLoding => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntrollStateCopyWith<EntrollState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntrollStateCopyWith<$Res> {
  factory $EntrollStateCopyWith(
          EntrollState value, $Res Function(EntrollState) then) =
      _$EntrollStateCopyWithImpl<$Res, EntrollState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool intentLoading,
      bool intentCreated,
      bool isError,
      bool hasmpinValidationData,
      Entroll? entrollhDetails,
      GetList? getlist,
      PaymentInentModel? intetData,
      bool listLoding});
}

/// @nodoc
class _$EntrollStateCopyWithImpl<$Res, $Val extends EntrollState>
    implements $EntrollStateCopyWith<$Res> {
  _$EntrollStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? intentLoading = null,
    Object? intentCreated = null,
    Object? isError = null,
    Object? hasmpinValidationData = null,
    Object? entrollhDetails = freezed,
    Object? getlist = freezed,
    Object? intetData = freezed,
    Object? listLoding = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      intentLoading: null == intentLoading
          ? _value.intentLoading
          : intentLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      intentCreated: null == intentCreated
          ? _value.intentCreated
          : intentCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasmpinValidationData: null == hasmpinValidationData
          ? _value.hasmpinValidationData
          : hasmpinValidationData // ignore: cast_nullable_to_non_nullable
              as bool,
      entrollhDetails: freezed == entrollhDetails
          ? _value.entrollhDetails
          : entrollhDetails // ignore: cast_nullable_to_non_nullable
              as Entroll?,
      getlist: freezed == getlist
          ? _value.getlist
          : getlist // ignore: cast_nullable_to_non_nullable
              as GetList?,
      intetData: freezed == intetData
          ? _value.intetData
          : intetData // ignore: cast_nullable_to_non_nullable
              as PaymentInentModel?,
      listLoding: null == listLoding
          ? _value.listLoding
          : listLoding // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntrollStateCopyWith<$Res>
    implements $EntrollStateCopyWith<$Res> {
  factory _$$_EntrollStateCopyWith(
          _$_EntrollState value, $Res Function(_$_EntrollState) then) =
      __$$_EntrollStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool intentLoading,
      bool intentCreated,
      bool isError,
      bool hasmpinValidationData,
      Entroll? entrollhDetails,
      GetList? getlist,
      PaymentInentModel? intetData,
      bool listLoding});
}

/// @nodoc
class __$$_EntrollStateCopyWithImpl<$Res>
    extends _$EntrollStateCopyWithImpl<$Res, _$_EntrollState>
    implements _$$_EntrollStateCopyWith<$Res> {
  __$$_EntrollStateCopyWithImpl(
      _$_EntrollState _value, $Res Function(_$_EntrollState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? intentLoading = null,
    Object? intentCreated = null,
    Object? isError = null,
    Object? hasmpinValidationData = null,
    Object? entrollhDetails = freezed,
    Object? getlist = freezed,
    Object? intetData = freezed,
    Object? listLoding = null,
  }) {
    return _then(_$_EntrollState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      intentLoading: null == intentLoading
          ? _value.intentLoading
          : intentLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      intentCreated: null == intentCreated
          ? _value.intentCreated
          : intentCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasmpinValidationData: null == hasmpinValidationData
          ? _value.hasmpinValidationData
          : hasmpinValidationData // ignore: cast_nullable_to_non_nullable
              as bool,
      entrollhDetails: freezed == entrollhDetails
          ? _value.entrollhDetails
          : entrollhDetails // ignore: cast_nullable_to_non_nullable
              as Entroll?,
      getlist: freezed == getlist
          ? _value.getlist
          : getlist // ignore: cast_nullable_to_non_nullable
              as GetList?,
      intetData: freezed == intetData
          ? _value.intetData
          : intetData // ignore: cast_nullable_to_non_nullable
              as PaymentInentModel?,
      listLoding: null == listLoding
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
      required this.intentLoading,
      required this.intentCreated,
      required this.isError,
      required this.hasmpinValidationData,
      required this.entrollhDetails,
      required this.getlist,
      required this.intetData,
      required this.listLoding});

  @override
  final bool isLoading;
  @override
  final bool intentLoading;
  @override
  final bool intentCreated;
  @override
  final bool isError;
  @override
  final bool hasmpinValidationData;
  @override
  final Entroll? entrollhDetails;
  @override
  final GetList? getlist;
  @override
  final PaymentInentModel? intetData;
  @override
  final bool listLoding;

  @override
  String toString() {
    return 'EntrollState(isLoading: $isLoading, intentLoading: $intentLoading, intentCreated: $intentCreated, isError: $isError, hasmpinValidationData: $hasmpinValidationData, entrollhDetails: $entrollhDetails, getlist: $getlist, intetData: $intetData, listLoding: $listLoding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntrollState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.intentLoading, intentLoading) ||
                other.intentLoading == intentLoading) &&
            (identical(other.intentCreated, intentCreated) ||
                other.intentCreated == intentCreated) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.hasmpinValidationData, hasmpinValidationData) ||
                other.hasmpinValidationData == hasmpinValidationData) &&
            (identical(other.entrollhDetails, entrollhDetails) ||
                other.entrollhDetails == entrollhDetails) &&
            (identical(other.getlist, getlist) || other.getlist == getlist) &&
            (identical(other.intetData, intetData) ||
                other.intetData == intetData) &&
            (identical(other.listLoding, listLoding) ||
                other.listLoding == listLoding));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      intentLoading,
      intentCreated,
      isError,
      hasmpinValidationData,
      entrollhDetails,
      getlist,
      intetData,
      listLoding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntrollStateCopyWith<_$_EntrollState> get copyWith =>
      __$$_EntrollStateCopyWithImpl<_$_EntrollState>(this, _$identity);
}

abstract class _EntrollState implements EntrollState {
  const factory _EntrollState(
      {required final bool isLoading,
      required final bool intentLoading,
      required final bool intentCreated,
      required final bool isError,
      required final bool hasmpinValidationData,
      required final Entroll? entrollhDetails,
      required final GetList? getlist,
      required final PaymentInentModel? intetData,
      required final bool listLoding}) = _$_EntrollState;

  @override
  bool get isLoading;
  @override
  bool get intentLoading;
  @override
  bool get intentCreated;
  @override
  bool get isError;
  @override
  bool get hasmpinValidationData;
  @override
  Entroll? get entrollhDetails;
  @override
  GetList? get getlist;
  @override
  PaymentInentModel? get intetData;
  @override
  bool get listLoding;
  @override
  @JsonKey(ignore: true)
  _$$_EntrollStateCopyWith<_$_EntrollState> get copyWith =>
      throw _privateConstructorUsedError;
}
