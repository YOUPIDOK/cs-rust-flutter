import 'package:app/src/features/authentication/data/auth_repository.dart';
import 'package:app/src/features/authentication/presentation/account/account_screen.dart';
import 'package:app/src/features/authentication/presentation/account/settings/account_settings_screen.dart';
import 'package:app/src/features/home/presentation/home_screen.dart';
import 'package:app/src/features/shared_preferences/data/shared_preferences_repository.dart';
import 'package:app/src/features/toilettes/presentation/toilettes_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/streams.dart';
import 'go_router_refresh_stream.dart';

part 'app_router.g.dart';

enum AppRoute { home, toilettes, account, accountSettings }

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  final streamingSharedPreferences = ref.watch(sharedPreferencesRepositoryProvider);

  final tokenStateChanges = streamingSharedPreferences.getToken;

  return GoRouter(
    onException: (context, state, router) {
      router.goNamed(AppRoute.home.name);
    },
    debugLogDiagnostics: true,
    initialLocation: '/home',
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) async {
      final sharedPreferencesRepository = ref.read(sharedPreferencesRepositoryProvider);
      final isLoggin = sharedPreferencesRepository.token != '';

      if (!isLoggin) {
        return '/home';
      }

      if ((state.fullPath == '/home')) {
        return '/toilettes';
      }

      return null;
    },
    refreshListenable: GoRouterRefreshStream(MergeStream([tokenStateChanges])),
    routes: [
      GoRoute(path: '/home', name: AppRoute.home.name, pageBuilder: (context, state) => pageFadeTransition(context, state, const HomeScreen())),
      StatefulShellRoute.indexedStack(
        builder: (context, state, child) => ScaffoldWithBottomNavBar(child: child),
        branches: [
          StatefulShellBranch(routes: <RouteBase>[
            GoRoute(
              path: '/toilettes',
              name: AppRoute.toilettes.name,
              pageBuilder: (context, state) => pageFadeTransition(context, state, const ToilettesScreen()),
            ),
          ]),
          StatefulShellBranch(routes: <RouteBase>[
            GoRoute(
                path: '/account',
                name: AppRoute.account.name,
                pageBuilder: (context, state) => pageFadeTransition(context, state, const AccountScreen()),
                routes: [
                  GoRoute(
                    path: '/settings',
                    name: AppRoute.accountSettings.name,
                    pageBuilder: (context, state) => pageFadeTransition(context, state, const AccountSettingsScreen()),
                  ),
                ]),
          ]),
        ],
      ),
    ],
  );
}

class ScaffoldWithBottomNavBar extends ConsumerStatefulWidget {
  const ScaffoldWithBottomNavBar({super.key, required this.child});
  final StatefulNavigationShell child;

  @override
  ConsumerState<ScaffoldWithBottomNavBar> createState() => _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends ConsumerState<ScaffoldWithBottomNavBar> {
  /* Floating Nav Bar */
  String get _currentLocation => GoRouter.of(context).routerDelegate.currentConfiguration.last.matchedLocation;

  // callback used to navigate to the desired tab
  void _onItemTapped(int index) {
    widget.child.goBranch(index, initialLocation: index == widget.child.currentIndex);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = getTabs(context);

    return Stack(
      children: [
        HeroControllerScope(
          controller: MaterialApp.createMaterialHeroController(),
          child: LayoutBuilder(
            builder: (ctx, constraints) => widget.child,
          ),
        ),
        Positioned(bottom: 0, left: 0, right: 0, child: BottomNavigationBar(items: tabs, currentIndex: widget.child.currentIndex, onTap: _onItemTapped)),
      ],
    );
  }
}

/// Representation of a tab item in the [ScaffoldWithBottomNavBar]
class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  const ScaffoldWithNavBarTabItem({
    required this.initialLocation,
    required super.icon,
    super.label,
    super.activeIcon,
  });

  /// The initial location/path
  final String initialLocation;
}

CustomTransitionPage pageFadeTransition(BuildContext context, GoRouterState state, Widget child) => CustomTransitionPage(
      key: state.pageKey,
      child: child,
      opaque: false,
      transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
    );

List<ScaffoldWithNavBarTabItem> getTabs(BuildContext context) => [
      const ScaffoldWithNavBarTabItem(
        initialLocation: '/toilettes',
        icon: Icon(Icons.map_outlined),
        activeIcon: Icon(Icons.map),
        label: "Search",
      ),
      const ScaffoldWithNavBarTabItem(
        initialLocation: '/account',
        icon: Icon(Icons.person_outline),
        activeIcon: Icon(Icons.person),
        label: "Account",
      ),
    ];
