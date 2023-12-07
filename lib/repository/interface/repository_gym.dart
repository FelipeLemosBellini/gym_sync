import 'package:gym_sync/models/gym_workout_model.dart';
import 'package:gym_sync/models/workouts_model.dart';
import 'package:gym_sync/repository/interface/repository_gym_interface.dart';

class RepositoryGym extends IRepositoryGym {
  @override
  Future<List<GymWorkOutModel>> getMyWorkouts() async {
    return [
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
    ];
  }

}
