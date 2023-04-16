import 'package:dartz/dartz.dart';
import 'package:yoga/domain/login/model/login.dart';


import '../../core/main_failures.dart';


abstract class ILogin {
  Future<Either<MainFailure, Login>> login({
    required String email,
    required String password,
  });
}
