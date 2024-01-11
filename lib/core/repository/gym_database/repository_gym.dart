import 'package:firebase_core/firebase_core.dart';
import 'package:gym_sync/core/exceptions/gym_exception.dart';
import 'package:gym_sync/core/models/gym_workout_model.dart';
import 'package:gym_sync/core/models/workouts_model.dart';
import 'package:gym_sync/core/repository/gym_database/interface/repository_gym_interface.dart';
import 'package:either_dart/either.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class RepositoryGym extends IRepositoryGym {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<Either<GymException, List<GymWorkOutModel>>> getMyWorkouts() async {
    try {
      // _firebaseFirestore.collection('users').doc("1234").
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

  @override
  Future<Either<GymException, void>> createWorkout({required GymWorkOutModel workOutModel}) async {
    try {
      return const Right(null);
    } catch (e) {
      return Left(GymException(error: "Error"));
    }
  }

  @override
  Future<Either<GymException, void>> editWorkout({required GymWorkOutModel nameWorkout}) async {
    try {
      return const Right(null);
    } catch (e) {
      return Left(GymException(error: "Error"));
    }
  }
}
