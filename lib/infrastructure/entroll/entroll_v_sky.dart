
// import 'dart:developer';

// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';
// import 'package:yoga/core/api.dart';
// import 'package:yoga/core/constants.dart';
// import 'package:yoga/core/main_failures.dart';
// import 'package:yoga/core/secure_storage.dart';
// import 'package:yoga/domain/entroll/i_entroll_repo.dart';
// import 'package:yoga/domain/entroll/model/entroll.dart';

// @LazySingleton(as: IEntroll)
// class EntrollRepository implements IEntroll {
//   @override
//   Future<Either<MainFailure, Entroll>> entroll({
//     required String id,
//   }) async {
//     var dio = Dio();

//     final bearToken = await getTokenFromSS(secureStoreKey);

//     final headers = {
//       'Authorization': 'Bearer $bearToken',
//       'Content-Type': 'application/json',
//     };
//     log("id : $id");
//     try {
//       final response = await dio.post(EndPoints.entroll,
//           data: {
//             'programe_name': id,
//           },
//           options: Options(headers: headers));

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final entrollResult = Entroll.fromJson(response.data);
//         log(entrollResult.message.toString());

//         return Right(entrollResult);
//       } else {
//         log(const MainFailure.serverFailure().toString());
//         return const Left(MainFailure.serverFailure());
//       }
//     } catch (e) {
//       log(e.toString());
//       return const Left(MainFailure.clientFailure());
//     }
//   }

//   static fromJson(data) {}
// }