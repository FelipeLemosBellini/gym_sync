import 'package:flutter/material.dart';
import 'package:gym_sync/routes/route_generate.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        //   MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(
        //         builder: (ctx, _) => HomeViewModel(repositoryGym: ctx), create: (BuildContext context) {})
        //   ],
        //   child:
        MaterialApp.router(
      routerConfig: RouteGenerate.router,
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: Routes.generateRoute,
      // initialRoute: "/home",
      // ),
    );
  }
}
