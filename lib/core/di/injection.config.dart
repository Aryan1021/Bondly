// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bondly/core/di/injectable_module.dart' as _i27;
import 'package:bondly/features/bonds/data/datasources/bonds_remote_datasource.dart'
    as _i485;
import 'package:bondly/features/bonds/data/repository/bond_repository_impl.dart'
    as _i1070;
import 'package:bondly/features/bonds/domain/repository/bond_repository.dart'
    as _i347;
import 'package:bondly/features/bonds/domain/usecases/get_bonds.dart' as _i966;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i361.Dio>(() => injectableModule.dio);
    gh.lazySingleton<_i485.BondsRemoteDatasource>(
      () => _i485.BondsRemoteDatasourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i347.BondRepository>(
      () => _i1070.BondRepositoryImpl(gh<_i485.BondsRemoteDatasource>()),
    );
    gh.factory<_i966.GetBonds>(
      () => _i966.GetBonds(gh<_i347.BondRepository>()),
    );
    return this;
  }
}

class _$InjectableModule extends _i27.InjectableModule {}
