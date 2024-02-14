import 'package:injectable/injectable.dart';
import 'package:injectables/domain/repository/i_counter_repository.dart';
import 'package:mocktail/mocktail.dart';

@injectable
class MockCounterRepository extends Mock implements ICounterRepository {}
