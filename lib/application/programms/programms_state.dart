part of 'programms_bloc.dart';





@freezed
class ProgrammsState with _$ProgrammsState {
  const factory ProgrammsState({
    required bool isLoading,
    required bool isError,
    required bool isData,
    required Programs? programmsDetails,
  }) = _ProgrammsState;

  factory ProgrammsState.initial() => const ProgrammsState(
        isLoading: false,
        isError: false,
        isData: false,
        programmsDetails: null,
      );
}
