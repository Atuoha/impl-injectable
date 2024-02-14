import 'package:injectable/injectable.dart';
import '../../infrastructure/repository/export.dart';
import 'i_counter_repository.dart';

@module
abstract class RepositoryModule {
  @prod
  @singleton
  ICounterRepository get counterRepository => CounterRepository();

  @dev
  @singleton
  ICounterRepository get devCounterRepository => DevCounterRepository();
}
