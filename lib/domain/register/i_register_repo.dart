import 'package:dartz/dartz.dart';

import '../../core/main_failures.dart';
import 'model/register.dart';

abstract class IRegister {
  Future<Either<MainFailure, RegisterResponse>> register({
    required String email,
    required String password,
    required String name,
    required String userType,
    required String mobile,
  });
}
