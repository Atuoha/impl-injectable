import 'package:injectables/domain/repository/i_counter_repository.dart';

class CounterRepository extends ICounterRepository {
  @override
  int get getIncrement => 1;
}
