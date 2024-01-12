

import 'package:gym_sync/core/models/exercise_model.dart';

class GymWorkoutModel {
  final String title;
  final List<ExerciseModel> workouts;

  GymWorkoutModel({required this.title, required this.workouts});
}
