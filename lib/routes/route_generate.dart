import 'package:go_router/go_router.dart';
import 'package:gym_sync/pages/create_workout_page.dart';
import 'package:gym_sync/pages/home_page.dart';
import 'package:gym_sync/routes/animation_transitions.dart';
import 'package:gym_sync/routes/routes.dart';

abstract class RouteGenerate {
  static dynamic _param(Object? map, String arg) {
    Map<String, dynamic>? args = map as Map<String, dynamic>;
    return args[arg];
  }

  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(path: Routes.initial, builder: (context, state) => const HomePage()),
    GoRoute(
        name: Routes.workoutPage,
        path: "/${Routes.workoutPage}",
        pageBuilder: (context, state) => CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 600),
            transitionsBuilder: AnimationTransitions.leftToRight,
            child: CreateWorkoutPage(gymWorkOutModel: RouteGenerate._param(state.extra, "gymWorkOutModel")))),
    GoRoute(
        name: Routes.exercisePage,
        path: "/${Routes.exercisePage}",
        pageBuilder: (context, state) => CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 600),
            transitionsBuilder: AnimationTransitions.leftToRight,
            child: CreateWorkoutPage(gymWorkOutModel: RouteGenerate._param(state.extra, "gymWorkOutModel"))))
  ]);
}
// quando passa no pathParameters null ele quebra
// no extra eu consigo tratar esse null
