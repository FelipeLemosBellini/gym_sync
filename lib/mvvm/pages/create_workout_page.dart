import 'package:flutter/material.dart';
import 'package:gym_sync/core/models/gym_workout_model.dart';

class CreateWorkoutPage extends StatefulWidget {
  final GymWorkoutModel gymWorkOutModel;

  const CreateWorkoutPage({super.key, required this.gymWorkOutModel});

  @override
  State<CreateWorkoutPage> createState() => _CreateWorkoutPageState();
}

class _CreateWorkoutPageState extends State<CreateWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      backgroundColor: Colors.amberAccent,
      body: Center(
          child: Column(
        children: [
          Text(widget.gymWorkOutModel.title),
        ],
      )),
    );
  }
}
