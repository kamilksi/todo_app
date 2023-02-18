// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:todo_app/presentation/add_page/add_page.dart' as _i2;
import 'package:todo_app/presentation/home_page/home_page.dart' as _i1;
import 'package:todo_app/presentation/update_page/update_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    AddRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddPage(),
      );
    },
    UpdateRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateRouteArgs>();
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.UpdatePage(
          key: args.key,
          index: args.index,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          AddRoute.name,
          path: '/add-page',
        ),
        _i4.RouteConfig(
          UpdateRoute.name,
          path: '/update-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.AddPage]
class AddRoute extends _i4.PageRouteInfo<void> {
  const AddRoute()
      : super(
          AddRoute.name,
          path: '/add-page',
        );

  static const String name = 'AddRoute';
}

/// generated route for
/// [_i3.UpdatePage]
class UpdateRoute extends _i4.PageRouteInfo<UpdateRouteArgs> {
  UpdateRoute({
    _i5.Key? key,
    required int index,
  }) : super(
          UpdateRoute.name,
          path: '/update-page',
          args: UpdateRouteArgs(
            key: key,
            index: index,
          ),
        );

  static const String name = 'UpdateRoute';
}

class UpdateRouteArgs {
  const UpdateRouteArgs({
    this.key,
    required this.index,
  });

  final _i5.Key? key;

  final int index;

  @override
  String toString() {
    return 'UpdateRouteArgs{key: $key, index: $index}';
  }
}
