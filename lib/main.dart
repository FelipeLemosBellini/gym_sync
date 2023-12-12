import 'package:flutter/material.dart';
import 'package:gym_sync/di/injection_dependencies.dart';
import 'package:gym_sync/routes/route_generate.dart';

void main() {
  DI.setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteGenerate.router,
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}
