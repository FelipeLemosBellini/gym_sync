import 'package:flutter/cupertino.dart';

class HomeViewModel with ChangeNotifier {
  HomeViewModel();

  void newWorkout(){
    notifyListeners();
  }
}
