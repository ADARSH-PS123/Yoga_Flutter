part of 'entroll_bloc.dart';

@freezed
class EntrollState with _$EntrollState {
  const factory EntrollState({
    required bool isLoading,
    required bool intentLoading,
    required bool intentCreated,
    required bool isError,
    required bool hasmpinValidationData,
    required Entroll? entrollhDetails,
    required GetList? getlist,
    required PaymentInentModel? intetData,
    required bool listLoding,
  }) = _EntrollState;

  factory EntrollState.initial() => const EntrollState(
        isLoading: false,
        isError: false,
        hasmpinValidationData: false,
        entrollhDetails: null,
        getlist: null,
        listLoding: false,
        intentCreated: false,
        intentLoading: false,
        intetData: null,
      );
}
