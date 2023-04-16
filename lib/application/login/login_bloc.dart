import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/login/i_login_repo.dart';
import 'package:yoga/domain/login/model/login.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILogin _iLogin;

  LoginBloc(
    this._iLogin,
  ) : super(LoginState.initial()) {
    on<_LoginValidation>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, hasmpinValidationData: false, isError: false));

      final otpResponse =
          await _iLogin.login(email: event.email, password: event.password);

      final result = otpResponse.fold(
        (failure) => state.copyWith(
            isLoading: false, isError: true, hasmpinValidationData: false),
        (success) => state.copyWith(
          isError: false,
          hasmpinValidationData: true,
          isLoading: false,
          authDetails: success,
        ),
      );
      emit(result);
    });
  }
}
