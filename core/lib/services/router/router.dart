import 'package:flutter/widgets.dart';

class AppRouter {
  final _navKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navKey => _navKey;
}
