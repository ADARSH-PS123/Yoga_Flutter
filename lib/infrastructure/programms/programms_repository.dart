import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/programms/model/programms.dart';
import '../../core/api.dart';
import '../../core/di/pgram_list.dart';
import '../../core/main_failures.dart';
import '../../domain/programms/i_programms_repo.dart';

@LazySingleton(as: IProgramms)
class ProgrammsRepository implements IProgramms {
  @override
  Future<Either<MainFailure, Programs>> getProgramms() async {
    var dio = Dio();
    try {
      // final response = await dio.get(
      //   EndPoints.getProgrms,
      // );

      // if (response.statusCode == 200 || response.statusCode == 201) {
      //   final result = Programs.fromJson(response.data);

      //   log(result.data![0].id.toString());

      //   return Right(result);
      // }

      final response = programList;
      if (response.status == 200 || response.status == 201) {
        return Right(response);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  static fromJson(data) {}
}
