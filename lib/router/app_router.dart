part of 'import_router.dart';

// flutter packages pub run build_runner watch --delete-conflicting-outputs

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  // RouteType get routeType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        /// routes go here
      ];
}
