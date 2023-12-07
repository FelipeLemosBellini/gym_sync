import 'package:flutter/material.dart';
import 'package:gym_sync/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  final String? name;

  const HomePage({this.name, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
      // Consumer<HomeViewModel>(
      //   builder: (context, viewModel, child) =>
            Scaffold(
                body: Center(
                    child: GestureDetector(
              onTap: () => Navigator.popAndPushNamed(context, "/createWorkout", arguments: {'userName': 'John Doe'}),
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Text("goToHome")),
            ))
                // ListView.builder(itemBuilder: (context, index) {
                //   return Text()
                // }),
                )
      // )
    ;
  }
}
