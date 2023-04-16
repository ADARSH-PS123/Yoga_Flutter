part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required bool isLoading,
    required bool isError,
    required bool hasmpinValidationData,
    required RegisterResponse? authDetails,
  }) = _RegisterState;

  factory RegisterState.initial() => const RegisterState(
        isLoading: false,
        isError: false,
        hasmpinValidationData: false,
        authDetails: null,
      );
}
