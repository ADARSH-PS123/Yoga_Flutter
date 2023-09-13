import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yoga/domain/entroll/model/payment_intent_model.dart';
import '../../core/main_failures.dart';
import '../../domain/entroll/i_intent_repo.dart';

@LazySingleton(as: IIntent)
class IntentRepository implements IIntent {
  @override
  Future<Either<MainFailure, PaymentInentModel>> paymentIntent({
    required int amount,
  }) async {
    var dio = Dio();

    const url = 'https://gurujisanjeevkrishna.com/api/payment-intent';

    try {
      final response = await dio.post(
        url,
        data: {'amount': amount},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = PaymentInentModel.fromJson(response.data);
        log(result.data.toString());

        return Right(result);
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

