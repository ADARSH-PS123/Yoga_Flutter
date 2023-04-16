import 'package:dartz/dartz.dart';

import 'package:yoga/domain/programms/model/programms.dart';

import '../../core/main_failures.dart';

abstract class IProgramms {
  Future<Either<MainFailure, Programs>> getProgramms();
}
