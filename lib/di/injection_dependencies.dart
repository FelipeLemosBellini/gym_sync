import 'package:get_it/get_it.dart';
import 'package:gym_sync/core/repository/repository_gym.dart';
import 'package:gym_sync/core/repository/interface/repository_gym_interface.dart';

abstract class DI {
  static final getIt = GetIt.I;
  static void setupDependencies() {
    getIt.registerLazySingleton<IRepositoryGym>(() => RepositoryGym());
  }
}
