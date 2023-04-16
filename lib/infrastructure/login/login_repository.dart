import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../core/api.dart';
import '../../core/main_failures.dart';
import '../../domain/login/i_login_repo.dart';
import '../../domain/login/model/login.dart';

@LazySingleton(as: ILogin)
class LoginRepository implements ILogin {
  @override
  Future<Either<MainFailure, Login>> login({
    required String email,
    required String password,
  }) async {
    var dio = Dio();
    try {
      final response = await dio.post(
        EndPoints.login,
        queryParameters: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final loginResult = Login.fromJson(response.data);

        log(loginResult.token.toString());
        return Right(loginResult);
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
