import 'package:gym_sync/models/gym_workout_model.dart';

abstract class IRepositoryGym {
  Future<List<GymWorkOutModel>> getMyWorkouts();
}
