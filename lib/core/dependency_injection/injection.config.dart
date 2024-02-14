// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:injectables/domain/repository/i_counter_repository.dart' as _i5;
import 'package:injectables/domain/repository/repository_module.dart' as _i7;
import 'package:injectables/infrastructure/repository/counter_repo.dart' as _i3;
import 'package:injectables/infrastructure/repository/dev_counter_repo.dart'
    as _i4;
import 'package:injectables/presentation/counter_change_notifier.dart' as _i6;

const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final repositoryModule = _$RepositoryModule();
    gh.factory<_i3.CounterRepository>(() => _i3.CounterRepository());
    gh.factory<_i4.DevCounterRepository>(() => _i4.DevCounterRepository());
    gh.singleton<_i5.ICounterRepository>(
      repositoryModule.counterRepository,
      registerFor: {_prod},
    );
    gh.singleton<_i5.ICounterRepository>(
      repositoryModule.devCounterRepository,
      registerFor: {_dev},
    );
    gh.factory<_i6.CounterChangeNotifier>(() => _i6.CounterChangeNotifier(
        iCounterRepository: gh<_i5.ICounterRepository>()));
    return this;
  }
}

class _$RepositoryModule extends _i7.RepositoryModule {}
