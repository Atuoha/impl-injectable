import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:injectables/core/dependency_injection/injection.dart';
import 'package:injectables/domain/constants/app_strings.dart';
import 'package:injectables/infrastructure/repository/export.dart';
import 'package:injectables/presentation/counter_change_notifier.dart';
import 'core/Utils/environment.dart';
import 'domain/repository/i_counter_repository.dart';
import 'presentation/pages/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  configDependencies(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<CounterChangeNotifier>(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
