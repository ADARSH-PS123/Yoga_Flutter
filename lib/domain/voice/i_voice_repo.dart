import 'package:dartz/dartz.dart';
import 'package:yoga/domain/voice/model/voice.dart';
import '../../core/main_failures.dart';

abstract class IGetVoiceOfSky {
  Future<Either<MainFailure, VoiceData>> getVoiceofSky();

}

abstract class IGetWisdomVoice {

  Future<Either<MainFailure, VoiceData>> getWisdomVoice();
}


