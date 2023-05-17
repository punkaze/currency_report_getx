import 'package:clean_structure_project/di/service_locator.dart';
import 'package:clean_structure_project/environment/app_env.dart';
import 'package:clean_structure_project/environment/flavor_environment.dart';
import 'package:clean_structure_project/presentation/pages/app/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppEnv.initial(FlavorEnvironment.development.value);
  await setUp();
  runApp(const App());
}
