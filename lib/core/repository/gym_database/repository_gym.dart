import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:gym_sync/core/exceptions/gym_exception.dart';
import 'package:gym_sync/core/helper/execute_either.dart';
import 'package:gym_sync/core/models/exercise_model.dart';
import 'package:gym_sync/core/models/gym_workout_model.dart';
import 'package:gym_sync/core/repository/gym_database/interface/repository_gym_interface.dart';

class RepositoryGym extends IRepositoryGym {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<Either<GymException, List<GymWorkoutModel>>> getMyWorkouts() async {
    return await executeEither<List<GymWorkoutModel>>(() {
      return [
        GymWorkoutModel(title: "leg day", workouts: [
          ExerciseModel(name: "leg press", weight: 60, repetitions: 12),
          ExerciseModel(name: "leg press", weight: 60, repetitions: 12),
          ExerciseModel(name: "leg press", weight: 60, repetitions: 12),
        ]),
        GymWorkoutModel(title: "biceps", workouts: [
          ExerciseModel(name: "supino", weight: 10, repetitions: 10),
          ExerciseModel(name: "supino", weight: 10, repetitions: 10),
          ExerciseModel(name: "supino", weight: 10, repetitions: 10)
        ])
      ];
    });
  }

  @override
  Future<Either<GymException, void>> createWorkout({required GymWorkoutModel workOutModel}) async {
    try {
      return const Right(null);
    } catch (e) {
      return Left(GymException(error: "Error"));
    }
  }

  @override
  Future<Either<GymException, void>> editWorkout({required GymWorkoutModel nameWorkout}) async {
    try {
      return const Right(null);
    } catch (e) {
      return Left(GymException(error: "Error"));
    }
  }
}
