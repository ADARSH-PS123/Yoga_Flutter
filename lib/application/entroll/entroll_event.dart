part of 'entroll_bloc.dart';

@freezed
class EntrollEvent with _$EntrollEvent {
  const factory EntrollEvent.entroll({
    required String id,
  }) = _Entroll;

  const factory EntrollEvent.getlist() = _Getlist;


    const factory EntrollEvent.paymentIntent({
    required int amount,
  }) = _PaymentIntent;
}
