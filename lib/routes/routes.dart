import 'package:flutter/material.dart';
import 'package:gym_sync/pages/home_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        // Map<String, dynamic>? arguments = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            settings: settings, builder: (BuildContext context) => HomePage());
      case "/createWorkout":
        Map<String, dynamic>? arguments = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            settings: settings, builder: (BuildContext context) => HomePage(name: arguments['userName']));

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}
