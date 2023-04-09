import 'package:auto_route/auto_route.dart';
import 'package:flutter_cat_facts/app/enums/app_routes_enum.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: AppRoutesEnum.fact.path, page: FactRoute.page),
    AutoRoute(path: AppRoutesEnum.factHistory.path, page: FactsHistoryRoute.page)
  ];
}
