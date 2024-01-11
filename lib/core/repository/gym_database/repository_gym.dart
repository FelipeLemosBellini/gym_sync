import 'package:gym_sync/core/exceptions/gym_exception.dart';
import 'package:gym_sync/core/models/gym_workout_model.dart';
import 'package:gym_sync/core/models/workouts_model.dart';
import 'package:gym_sync/core/repository/gym_database/interface/repository_gym_interface.dart';
import 'package:either_dart/either.dart';

class RepositoryGym extends IRepositoryGym {
  @override
  Future<Either<GymException, List<GymWorkOutModel>>> getMyWorkouts() async {
    try {
      return Right([
        GymWorkOutModel(title: "leg day", workouts: [
          WorkoutsModel(name: "leg press", weight: 60, repetitions: 12),
          WorkoutsModel(name: "leg press", weight: 60, repetitions: 12),
          WorkoutsModel(name: "leg press", weight: 60, repetitions: 12),
        ]),
        GymWorkOutModel(title: "biceps", workouts: [
          WorkoutsModel(name: "supino", weight: 10, repetitions: 10),
          WorkoutsModel(name: "supino", weight: 10, repetitions: 10),
          WorkoutsModel(name: "supino", weight: 10, repetitions: 10),
        ]),
      ]);
    } catch (error) {
      return Left(GymException(error: "Error"));
    }
  }
}
