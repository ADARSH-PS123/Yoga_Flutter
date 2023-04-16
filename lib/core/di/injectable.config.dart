// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/entroll/entroll_bloc.dart' as _i14;
import '../../application/login/login_bloc.dart' as _i11;
import '../../application/programms/programms_bloc.dart' as _i12;
import '../../application/register/register_bloc.dart' as _i13;
import '../../domain/entroll/i_entroll_repo.dart' as _i3;
import '../../domain/login/i_login_repo.dart' as _i5;
import '../../domain/programms/i_programms_repo.dart' as _i7;
import '../../domain/register/i_register_repo.dart' as _i9;
import '../../infrastructure/entroll/entroll_repositrory.dart' as _i4;
import '../../infrastructure/login/login_repository.dart' as _i6;
import '../../infrastructure/programms/programms_repository.dart' as _i8;
import '../../infrastructure/register/register_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IEntroll>(() => _i4.EntrollRepository());
  gh.lazySingleton<_i5.ILogin>(() => _i6.LoginRepository());
  gh.lazySingleton<_i7.IProgramms>(() => _i8.ProgrammsRepository());
  gh.lazySingleton<_i9.IRegister>(() => _i10.RegisterRepository());
  gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc(get<_i5.ILogin>()));
  gh.factory<_i12.ProgrammsBloc>(
      () => _i12.ProgrammsBloc(get<_i7.IProgramms>()));
  gh.factory<_i13.RegisterBloc>(() => _i13.RegisterBloc(get<_i9.IRegister>()));
  gh.factory<_i14.EntrollBloc>(() => _i14.EntrollBloc(get<_i3.IEntroll>()));
  return get;
}
