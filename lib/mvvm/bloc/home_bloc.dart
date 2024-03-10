import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_sync/core/repository/firebase_analytics/interface/firebase_analytics_interface.dart';
import 'package:gym_sync/core/repository/gym_database/interface/repository_gym_interface.dart';
import 'package:gym_sync/mvvm/view_model/home_view_model.dart';
import 'package:gym_sync/routes/route_names.dart';
import 'package:gym_sync/core/models/gym_workout_model.dart';

class HomeBloc extends Cubit<HomeViewModel> {
  final IRepositoryGym _repositoryGym = GetIt.I.call<IRepositoryGym>();
  final IFirebaseAnalytics _analytics = GetIt.I.call<IFirebaseAnalytics>();

  HomeBloc() : super(HomeViewModel());

  void getWorkouts() async {
    _repositoryGym.getMyWorkouts();
  }

  void goToNewWorkout(BuildContext context) {
    _analytics.onTapTest();
    GoRouter.of(context)
        .goNamed(RouteNames.workoutPage, extra: {"gymWorkOutModel": GymWorkoutModel(title: "aaaa", workouts: [])});
  }
}
