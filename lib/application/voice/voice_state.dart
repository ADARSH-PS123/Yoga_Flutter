part of 'voice_bloc.dart';

@freezed
class VoiceState with _$VoiceState {
  const factory VoiceState({
    required bool isLoading,
    required bool isError,
    required bool isWisdomData,
        required bool isvoiceofskyData,
    required VoiceData? wisdomVoice,
    required VoiceData? voiceOfSky,
  }) = _VoiceState;

  factory VoiceState.initial() => const VoiceState(
        isLoading: false,
        isError: false,
        isWisdomData: false,
        isvoiceofskyData: false,
        wisdomVoice: null,
        voiceOfSky: null,
      );
}
