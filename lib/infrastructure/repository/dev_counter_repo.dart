import 'package:injectables/domain/repository/i_counter_repository.dart';

class DevCounterRepository extends ICounterRepository {
  @override
  int get getIncrement => 2;
}
