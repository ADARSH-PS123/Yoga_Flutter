import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/entroll/i_entroll_repo.dart';
import 'package:yoga/domain/entroll/i_list_repo.dart';
import 'package:yoga/domain/entroll/model/entroll.dart';
import 'package:yoga/domain/entroll/model/list.dart';

part 'entroll_event.dart';
part 'entroll_state.dart';
part 'entroll_bloc.freezed.dart';

@injectable
class EntrollBloc extends Bloc<EntrollEvent, EntrollState> {
  final IEntroll _iEntroll;
  final IGetList _getList;
  EntrollBloc(this._iEntroll, this._getList) : super(EntrollState.initial()) {
    on<_Entroll>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasmpinValidationData: false,
        isError: false,
      ));

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

    on<_Getlist>((event, emit) async {
      emit(state.copyWith(
        hasmpinValidationData: false,
        listLoding: true,
        isError: false,
      ));

      final otpResponse = await _getList.getlist();

      final result = otpResponse.fold(
        (failure) => state.copyWith(
          isError: true,
          hasmpinValidationData: false,
          listLoding: false,
        ),
        (success) => state.copyWith(
          isError: false,
          hasmpinValidationData: true,
          getlist: success,
          listLoding: false,
        ),
      );
      emit(result);
    });
  }
}
