// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_cat_facts/presentation/fact_screen/fact_screen.dart'
    as _i1;
import 'package:flutter_cat_facts/presentation/facts_history_screen/facts_history_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    FactRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FactScreen(),
      );
    },
    FactsHistoryRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FactsHistoryScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.FactScreen]
class FactRoute extends _i3.PageRouteInfo<void> {
  const FactRoute({List<_i3.PageRouteInfo>? children})
      : super(
          FactRoute.name,
          initialChildren: children,
        );

  static const String name = 'FactRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FactsHistoryScreen]
class FactsHistoryRoute extends _i3.PageRouteInfo<void> {
  const FactsHistoryRoute({List<_i3.PageRouteInfo>? children})
      : super(
          FactsHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'FactsHistoryRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
