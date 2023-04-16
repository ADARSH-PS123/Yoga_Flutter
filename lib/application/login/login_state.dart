part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required bool isError,
    required bool hasmpinValidationData,
    required Login? authDetails,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        isLoading: false,
        isError: false,
        hasmpinValidationData: false,
        authDetails: null,
      );
}
