part of 'entroll_bloc.dart';

@freezed
class EntrollEvent with _$EntrollEvent {
  const factory EntrollEvent.entroll({
    required String id,
  }) = _Entroll;
}
