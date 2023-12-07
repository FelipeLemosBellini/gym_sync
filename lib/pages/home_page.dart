import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_sync/models/gym_workout_model.dart';
import 'package:gym_sync/routes/routes.dart';
import 'package:gym_sync/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
      onTap: () => context
          .pushNamed(Routes.workoutPage, extra: {"gymWorkOutModel": GymWorkOutModel(title: "aaaa", workouts: [])}),
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
