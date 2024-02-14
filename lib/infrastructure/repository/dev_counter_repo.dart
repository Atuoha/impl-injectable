import 'package:injectable/injectable.dart';
import 'package:injectables/domain/repository/i_counter_repository.dart';

@injectable
class DevCounterRepository extends ICounterRepository {
  @override
  int get getIncrement => 2;
}
