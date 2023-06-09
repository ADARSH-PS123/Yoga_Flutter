import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/core/secure_storage.dart';
import 'package:yoga/domain/entroll/i_list_repo.dart';
import 'package:yoga/domain/entroll/model/entroll.dart';
import 'package:yoga/domain/entroll/model/list.dart';
import '../../core/api.dart';
import '../../core/constants.dart';
import '../../core/main_failures.dart';
import '../../domain/entroll/i_entroll_repo.dart';

@LazySingleton(as: IGetList)
class GetListRepository implements IGetList {
  @override
  Future<Either<MainFailure, GetList>> getlist(

  ) async {
    var dio = Dio();

    final bearToken = await getTokenFromSS(secureStoreKey);

    final headers = {
      'Authorization': 'Bearer $bearToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await dio.get("https://gurujisanjeevkrishna.com/api/subscribed-progrms",
          // data: {
          //   'programe_name': id,
          // },
          options: Options(headers: headers)
          
          );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final entrollResult = GetList.fromJson(response.data);
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
