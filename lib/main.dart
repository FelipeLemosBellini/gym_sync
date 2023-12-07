import 'package:flutter/material.dart';
import 'package:gym_sync/routes/routes.dart';
import 'package:gym_sync/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(builder:(ctx,_)=> HomeViewModel(repositoryGym: ctx), create: (BuildContext context) {
        
      })
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),

        onGenerateRoute: Routes.generateRoute,
        initialRoute: "/home",
      ),
    );
  }
}
