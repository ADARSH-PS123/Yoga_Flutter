import 'package:dartz/dartz.dart';
import 'package:yoga/domain/entroll/model/entroll.dart';

import '../../core/main_failures.dart';

abstract class IEntroll {
  Future<Either<MainFailure, Entroll>> entroll({
    required String id,
  });
}
