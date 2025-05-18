import 'package:flutter/material.dart';
import 'package:flutter_frosted_window/model/nav_item.dart';
import 'package:flutter_frosted_window/src/persistent_layout.dart';

class FrostedApp extends StatelessWidget {
  final ThemeData? theme;
  final String? title;
  final Widget? home;
  final Map<String, WidgetBuilder>? initialRoute;
  final Map<String, WidgetBuilder>? routes;
  final RouteFactory? onGenerateRoute;
  final bool? preserveLayout;
  final ThemeData? darkTheme;
  final bool? useBlur;
  final bool? debugShowCheckedModeBanner;
  final List<NavItem> navItems;

  const FrostedApp({
    super.key,
    this.theme,
    this.home,
    this.routes,
    this.onGenerateRoute,
    this.title,
    this.initialRoute,
    this.preserveLayout,
    this.darkTheme,
    this.useBlur,
    this.debugShowCheckedModeBanner,
    required this.navItems,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: debugShowCheckedModeBanner ?? false,
      theme: theme,
      home: initialRoute == null ? home : null,
      routes: routes ?? const {},
      initialRoute: initialRoute?.keys.first,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      onGenerateInitialRoutes:
          initialRoute != null
              ? (initialRoute) => wrapInitialRoutes(
                initialRoute: initialRoute,
                onGenerateRoute: onGenerateRoute ?? (_) => null,
                preserveLayout: preserveLayout ?? false,
                title: title ?? '',
              )
              : null,
      onGenerateRoute: wrapRouteFactoryWithLayout(
        original: onGenerateRoute ?? (_) => null,
        preserveLayout: preserveLayout ?? false,
        title: title ?? '',
      ),
      builder:
          (context, child) => getLayoutWidget(child ?? const SizedBox.shrink()),
    );
  }

  Widget getLayoutWidget(Widget child) => PersistentLayout(
    title: title,
    useBlur: useBlur ?? true,
    blurSigma: 20,
    navItems: navItems,
    child: child,
  );

  RouteFactory wrapRouteFactoryWithLayout({
    required RouteFactory original,
    required bool preserveLayout,
    required String title,
  }) {
    return (RouteSettings settings) {
      final Route? route = original(settings);
      if (route is MaterialPageRoute && preserveLayout) {
        return MaterialPageRoute(
          settings: route.settings,
          fullscreenDialog: route.fullscreenDialog,
          maintainState: route.maintainState,
          builder: (context) => getLayoutWidget(route.builder(context)),
        );
      }
      return route;
    };
  }

  List<Route<dynamic>> wrapInitialRoutes({
    required String initialRoute,
    required RouteFactory onGenerateRoute,
    required bool preserveLayout,
    required String title,
  }) {
    final Route<dynamic>? route = onGenerateRoute(
      RouteSettings(name: initialRoute),
    );
    if (route is MaterialPageRoute && preserveLayout) {
      return [
        MaterialPageRoute(
          settings: route.settings,
          fullscreenDialog: route.fullscreenDialog,
          maintainState: route.maintainState,
          builder: (context) => getLayoutWidget(route.builder(context)),
        ),
      ];
    }
    return [if (route != null) route];
  }
}
