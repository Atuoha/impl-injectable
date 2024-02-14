import 'package:injectable/injectable.dart';
import 'package:injectables/domain/repository/i_counter_repository.dart';

@injectable
class CounterRepository extends ICounterRepository {
  @override
  int get getIncrement => 1;
}
