import 'package:injectable/injectable.dart' as injectable;
import 'package:injectables/core/dependency_injection/injection.dart';
import 'package:injectables/domain/repository/i_counter_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() {
    configDependencies(injectable.Environment.test);
  });

 test('do something', (){
   final mockRepo = getIt<ICounterRepository>();

   when(()=>mockRepo.getIncrement).thenReturn(123);
 });
}