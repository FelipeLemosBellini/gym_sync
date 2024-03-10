import 'package:go_router/go_router.dart';
import 'package:gym_sync/mvvm/pages/create_workout_page.dart';
import 'package:gym_sync/mvvm/pages/home_page.dart';
import 'package:gym_sync/routes/animation_transitions.dart';
import 'package:gym_sync/routes/route_names.dart';

abstract class RouteGenerate {
  static dynamic _param(Object? map, String arg) {
    Map<String, dynamic>? args = map as Map<String, dynamic>;
    return args[arg];
  }

  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(path: RouteNames.initial, builder: (context, state) => const HomePage()),
    GoRoute(
        name: RouteNames.workoutPage,
        path: "/${RouteNames.workoutPage}",
        pageBuilder: (context, state) => CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 600),
            transitionsBuilder: AnimationTransitions.leftToRight,
            child: CreateWorkoutPage(gymWorkOutModel: _param(state.extra, "gymWorkOutModel")))),
    GoRoute(
        name: RouteNames.exercisePage,
        path: "/${RouteNames.exercisePage}",
        pageBuilder: (context, state) => CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 600),
            transitionsBuilder: AnimationTransitions.leftToRight,
            child: CreateWorkoutPage(gymWorkOutModel: _param(state.extra, "gymWorkOutModel"))))
  ]);
}
// quando passa no pathParameters null ele quebra
// no extra eu consigo tratar esse null
