import 'package:either_dart/either.dart';
import 'package:gym_sync/core/exceptions/gym_exception.dart';
import 'package:gym_sync/models/gym_workout_model.dart';

abstract class IRepositoryGym {
  Future<Either<GymException, List<GymWorkOutModel>>> getMyWorkouts();
}
