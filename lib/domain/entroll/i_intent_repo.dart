
import 'package:dartz/dartz.dart';
import 'package:yoga/domain/entroll/model/payment_intent_model.dart';

import '../../core/main_failures.dart';

abstract class IIntent {
  Future<Either<MainFailure, PaymentInentModel>> paymentIntent({
    required int amount,
  });
}
