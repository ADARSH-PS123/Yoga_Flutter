import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/register/i_register_repo.dart';
import 'package:yoga/domain/register/model/register.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IRegister _iRegister;
  RegisterBloc(this._iRegister) : super(RegisterState.initial()) {
    on<_RegisterValidation>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, hasmpinValidationData: false, isError: false));

      final otpResponse = await _iRegister.register(
          email: event.email,
          password: event.password,
          mobile: event.mobile,
          name: event.name,
          userType: event.userType);

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
