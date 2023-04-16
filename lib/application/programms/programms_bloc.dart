import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/programms/i_programms_repo.dart';
import 'package:yoga/domain/programms/model/programms.dart';

part 'programms_event.dart';
part 'programms_state.dart';
part 'programms_bloc.freezed.dart';

@injectable
class ProgrammsBloc extends Bloc<ProgrammsEvent, ProgrammsState> {
  final IProgramms _iProgramms;

  ProgrammsBloc(this._iProgramms) : super(ProgrammsState.initial()) {
    on<_GetPrograms>((event, emit) async {
      
      if (state.isData) {
        return;
      }

      emit(state.copyWith(isLoading: true, isData: false, isError: false));

      final otpResponse = await _iProgramms.getProgramms();

      final result = otpResponse.fold(
        (failure) =>
            state.copyWith(isLoading: false, isError: true, isData: false),
        (success) => state.copyWith(
          isError: false,
          isData: true,
          isLoading: false,
          programmsDetails: success,
        ),
      );
      emit(result);
    });
  }
}
