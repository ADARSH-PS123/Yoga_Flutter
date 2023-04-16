import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/entroll/i_entroll_repo.dart';
import 'package:yoga/domain/entroll/model/entroll.dart';

part 'entroll_event.dart';
part 'entroll_state.dart';
part 'entroll_bloc.freezed.dart';

@injectable
class EntrollBloc extends Bloc<EntrollEvent, EntrollState> {
  final IEntroll _iEntroll;
  EntrollBloc(this._iEntroll) : super(EntrollState.initial()) {
    on<_Entroll>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, hasmpinValidationData: false, isError: false));

      final otpResponse = await _iEntroll.entroll(id: event.id);

      final result = otpResponse.fold(
        (failure) => state.copyWith(
            isLoading: false, isError: true, hasmpinValidationData: false),
        (success) => state.copyWith(
          isError: false,
          hasmpinValidationData: true,
          isLoading: false,
          entrollhDetails: success,
        ),
      );
      emit(result);
    });
  }
}
