import 'package:get_it/get_it.dart';
import 'package:gym_sync/core/repository/firebase_analytics/interface/firebase_analytics_interface.dart';
import 'package:gym_sync/core/repository/firebase_analytics/repository_firebase_analytics.dart';
import 'package:gym_sync/core/repository/gym_database/interface/repository_gym_interface.dart';
import 'package:gym_sync/core/repository/gym_database/repository_gym.dart';

abstract class DI {
  static final getIt = GetIt.I;
  static void setupDependencies() {
    getIt.registerLazySingleton<IRepositoryGym>(() => RepositoryGym());
    getIt.registerLazySingleton<IFirebaseAnalytics>(() => RepositoryFirebaseAnalytic());
  }
}
