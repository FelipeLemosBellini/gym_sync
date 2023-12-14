import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:gym_sync/models/gym_workout_model.dart';
import 'package:gym_sync/core/repository/interface/repository_gym_interface.dart';
import 'package:gym_sync/routes/routes.dart';
import 'package:gym_sync/view_model/home_view_model.dart';
import 'package:go_router/go_router.dart';

class HomeBloc extends Cubit<HomeViewModel> {
  final IRepositoryGym _repositoryGym = GetIt.I.call<IRepositoryGym>();

  HomeBloc() : super(HomeViewModel());

  void getWorkouts() async {
    _repositoryGym.getMyWorkouts();
  }

  void goToNewWorkout(BuildContext context) =>
      context.pushNamed(Routes.workoutPage, extra: {"gymWorkOutModel": GymWorkOutModel(title: "aaaa", workouts: [])});
}
