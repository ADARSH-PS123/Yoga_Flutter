part of 'entroll_bloc.dart';

@freezed
class EntrollState with _$EntrollState {
  const factory EntrollState({
    required bool isLoading,
    required bool isError,
    required bool hasmpinValidationData,
    required Entroll? entrollhDetails,
    required GetList? getlist,
    required bool listLoding,
  }) = _EntrollState;

  factory EntrollState.initial() => const EntrollState(
        isLoading: false,
        isError: false,
        hasmpinValidationData: false,
        entrollhDetails: null,
        getlist: null,
        listLoding: false,
      );
}
