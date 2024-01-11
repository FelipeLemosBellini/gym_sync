import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:gym_sync/core/repository/firebase_analytics/interface/firebase_analytics_interface.dart';
import 'package:gym_sync/core/repository/gym_database/interface/repository_gym_interface.dart';
import 'package:gym_sync/mvvm/view_model/home_view_model.dart';

class HomeBloc extends Cubit<HomeViewModel> {
  final IRepositoryGym _repositoryGym = GetIt.I.call<IRepositoryGym>();
  final IFirebaseAnalytics _analytics = GetIt.I.call<IFirebaseAnalytics>();

  HomeBloc() : super(HomeViewModel());

  void getWorkouts() async {
    _repositoryGym.getMyWorkouts();
  }

  void goToNewWorkout(BuildContext context) {
    _analytics.onTapTest();
    // context.pushNamed(Routes.workoutPage, extra: {"gymWorkOutModel": GymWorkOutModel(title: "aaaa", workouts: [])});
  }
}
