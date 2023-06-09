import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/core/secure_storage.dart';
import 'package:yoga/domain/voice/i_voice_repo.dart';
import 'package:yoga/domain/voice/model/voice.dart';
import '../../core/constants.dart';
import '../../core/main_failures.dart';

@LazySingleton(as: IGetWisdomVoice)
class GetWisdomOfSkyRepository implements IGetWisdomVoice {
  @override
  Future<Either<MainFailure, VoiceData>> getWisdomVoice() async {
    var dio = Dio();

    final bearToken = await getTokenFromSS(secureStoreKey);

    final headers = {
      'Authorization': 'Bearer $bearToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await dio.get(
          "https://gurujisanjeevkrishna.com/api/get-sky-wisdome",
          options: Options(headers: headers));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final entrollResult = VoiceData.fromJson(response.data);
        log(entrollResult.toString());

        return Right(entrollResult);
      } else {
        log(const MainFailure.serverFailure().toString());
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  static fromJson(data) {}
}
