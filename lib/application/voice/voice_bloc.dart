import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/voice/i_voice_repo.dart';
import 'package:yoga/domain/voice/model/voice.dart';

part 'voice_event.dart';
part 'voice_state.dart';
part 'voice_bloc.freezed.dart';

@injectable
class VoiceBloc extends Bloc<VoiceEvent, VoiceState> {
  final IGetWisdomVoice _igetWisdomVoice;
  final IGetVoiceOfSky _igetVoiceOfSky;

  VoiceBloc(this._igetWisdomVoice, this._igetVoiceOfSky)
      : super(VoiceState.initial()) {
    on<_GetVoiceofSky>((event, emit) async {
      if (state.isvoiceofskyData) {
        return;
      }

      emit(state.copyWith(
          isLoading: true, isvoiceofskyData: false, isError: false));

      final otpResponse = await _igetVoiceOfSky.getVoiceofSky();

      final result = otpResponse.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
          isvoiceofskyData: false,
        ),
        (success) => state.copyWith(
          isError: false,
          isvoiceofskyData: true,
          isLoading: false,
          voiceOfSky: success,
        ),
      );
      emit(result);
    });

    on<_GetWisdomVoice>((event, emit) async {
      if (state.isWisdomData) {
        return;
      }

      emit(
          state.copyWith(isLoading: true, isWisdomData: false, isError: false));

      final otpResponse = await _igetWisdomVoice.getWisdomVoice();

      final result = otpResponse.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
          isWisdomData: false,
        ),
        (success) => state.copyWith(
          isError: false,
          isWisdomData: true,
          isLoading: false,
          wisdomVoice: success,
        ),
      );
      emit(result);
    });
  }
}
