import 'package:flutter/cupertino.dart';
import 'package:injectables/domain/repository/i_counter_repository.dart';

class CounterChangeNotifier extends ChangeNotifier {
  final ICounterRepository iCounterRepository;

  CounterChangeNotifier({required this.iCounterRepository});

  int _value = 0;

  int get value => _value;

  void increment() {
    _value += iCounterRepository.getIncrement;
    notifyListeners();
  }
}
