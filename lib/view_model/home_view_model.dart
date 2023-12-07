import 'package:flutter/cupertino.dart';
import 'package:gym_sync/repository/interface/repository_gym_interface.dart';

class HomeViewModel with ChangeNotifier {
  final IRepositoryGym repositoryGym;

  HomeViewModel({required this.repositoryGym});

  void getWorkouts() async {}

  void newWorkout() {
    notifyListeners();
  }
}
