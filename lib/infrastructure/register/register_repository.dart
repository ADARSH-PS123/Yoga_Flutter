import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/register/i_register_repo.dart';
import 'package:yoga/domain/register/model/register.dart';
import '../../core/api.dart';
import '../../core/main_failures.dart';


@LazySingleton(as: IRegister)
class RegisterRepository implements IRegister {
  @override
  Future<Either<MainFailure, RegisterResponse>> register({
    required String email,
    required String password,
    required String name,
    required String userType,
    required String mobile,
  }) async {
    var dio = Dio();
    try {
      final response = await dio.post(
        EndPoints.register,
        queryParameters: {
          'email': email,
          'password': password,
          'name': name,
          'user_type': userType,
          'mobile': mobile,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final RegisterResult = RegisterResponse.fromJson(response.data);

        log(RegisterResult.token.toString());
        return Right(RegisterResult);
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
