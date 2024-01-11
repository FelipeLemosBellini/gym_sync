import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:gym_sync/core/repository/firebase_analytics/interface/firebase_analytics_interface.dart';

class RepositoryFirebaseAnalytic implements IFirebaseAnalytics {
  final FirebaseAnalytics _instanceAnalytic = FirebaseAnalytics.instance;

  @override
  Future<void> onTapTest() async {
    await _instanceAnalytic.logEvent(
        name: 'on_tap_test', parameters: {"has_clicked": "true"}, callOptions: AnalyticsCallOptions(global: true));
  }
}
