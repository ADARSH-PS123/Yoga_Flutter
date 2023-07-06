import 'package:dartz/dartz.dart';


import '../../core/main_failures.dart';
import 'model/list.dart';

abstract class IGetList {
  Future<Either<MainFailure, GetList>> getlist();
}
