
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../core/constants.dart';
import '../../core/secure_storage.dart';
part 'initilize_event.dart';
part 'initilize_state.dart';
part 'initilize_bloc.freezed.dart';

class InitilizeBloc extends Bloc<InitilizeEvent, InitilizeState> {
  InitilizeBloc() : super(InitilizeState.initial()) {
    InternetConnectionCheckerPlus().onStatusChange.listen((status) {
      add(const _ContectionChanged(
        connectionstatus: true,
      ));
    });

    on<_ContectionChanged>((event, emit) async {
      emit(state.copyWith(
        connectionStatus: event.connectionstatus,
      ));
    });

    on<_Initial>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isToken: false,
        ),
      );

      final token = await getTokenFromSS(secureStoreKey);

      if (token != null) {
        emit(state.copyWith(
          isLoading: false,
          isToken: true,
        ));
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isToken: false,
          ),
        );
      }
    });
  }
}
