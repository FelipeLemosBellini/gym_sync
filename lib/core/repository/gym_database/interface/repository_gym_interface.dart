import 'package:either_dart/either.dart';
import 'package:gym_sync/core/exceptions/gym_exception.dart';
import 'package:gym_sync/core/models/gym_workout_model.dart';

abstract class IRepositoryGym {
  Future<Either<GymException, List<GymWorkoutModel>>> getMyWorkouts();

  Future<Either<GymException, void>> createWorkout({required GymWorkoutModel workOutModel});

  Future<Either<GymException, void>> editWorkout({required GymWorkoutModel nameWorkout});
}
