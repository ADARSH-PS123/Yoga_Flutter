import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/entroll/model/entroll.dart';
import '../../core/api.dart';
import '../../core/main_failures.dart';
import '../../domain/entroll/i_entroll_repo.dart';

@LazySingleton(as: IEntroll)
class EntrollRepository implements IEntroll {
  @override
  Future<Either<MainFailure, Entroll>> entroll({
    required String id,
  }) async {
    var dio = Dio();
    try {
      final response = await dio.post(
        EndPoints.entroll,
        queryParameters: {
          'program_id': id,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final entrollResult = Entroll.fromJson(response.data);
        log(entrollResult.toString());

        return Right(entrollResult);
      } else {
        log(MainFailure.serverFailure().toString());
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  static fromJson(data) {}
}
