// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/entroll/entroll_bloc.dart' as _i20;
import '../../application/login/login_bloc.dart' as _i16;
import '../../application/programms/programms_bloc.dart' as _i17;
import '../../application/register/register_bloc.dart' as _i18;
import '../../application/voice/voice_bloc.dart' as _i19;
import '../../domain/entroll/i_entroll_repo.dart' as _i3;
import '../../domain/entroll/i_list_repo.dart' as _i5;
import '../../domain/login/i_login_repo.dart' as _i10;
import '../../domain/programms/i_programms_repo.dart' as _i12;
import '../../domain/register/i_register_repo.dart' as _i14;
import '../../domain/voice/i_voice_repo.dart' as _i7;
import '../../infrastructure/entroll/entroll_repositrory.dart' as _i4;
import '../../infrastructure/entroll/get_repository.dart' as _i6;
import '../../infrastructure/login/login_repository.dart' as _i11;
import '../../infrastructure/programms/programms_repository.dart' as _i13;
import '../../infrastructure/register/register_repository.dart' as _i15;
import '../../infrastructure/voice/voice_of_sky_repository.dart' as _i8;
import '../../infrastructure/voice/wisdom_of_sky_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.IGetList>(() => _i6.GetListRepository());
  gh.lazySingleton<_i7.IGetVoiceOfSky>(() => _i8.GetVoiceOfSkyRepository());
  gh.lazySingleton<_i7.IGetWisdomVoice>(() => _i9.GetWisdomOfSkyRepository());
  gh.lazySingleton<_i10.ILogin>(() => _i11.LoginRepository());
  gh.lazySingleton<_i12.IProgramms>(() => _i13.ProgrammsRepository());
  gh.lazySingleton<_i14.IRegister>(() => _i15.RegisterRepository());
  gh.factory<_i16.LoginBloc>(() => _i16.LoginBloc(get<_i10.ILogin>()));
  gh.factory<_i17.ProgrammsBloc>(
      () => _i17.ProgrammsBloc(get<_i12.IProgramms>()));
  gh.factory<_i18.RegisterBloc>(() => _i18.RegisterBloc(get<_i14.IRegister>()));
  gh.factory<_i19.VoiceBloc>(() => _i19.VoiceBloc(
        get<_i7.IGetWisdomVoice>(),
        get<_i7.IGetVoiceOfSky>(),
      ));
  gh.factory<_i20.EntrollBloc>(() => _i20.EntrollBloc(
        get<_i3.IEntroll>(),
        get<_i5.IGetList>(),
      ));
  return get;
}
