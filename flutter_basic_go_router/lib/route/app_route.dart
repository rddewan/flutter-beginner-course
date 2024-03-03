import 'package:flutter/material.dart';
import 'package:flutter_basic_nav/route/app_route_name.dart';
import 'package:flutter_basic_nav/route/app_route_observer.dart';
import 'package:flutter_basic_nav/route/go_router_notifier.dart';
import 'package:flutter_basic_nav/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_basic_nav/screens/detail_screen.dart';
import 'package:flutter_basic_nav/screens/error/route_error_screen.dart';
import 'package:flutter_basic_nav/screens/home_screen.dart';
import 'package:flutter_basic_nav/screens/log_in_screen.dart';
import 'package:flutter_basic_nav/screens/onboarding_screen.dart';
import 'package:flutter_basic_nav/screens/product_screen.dart';
import 'package:flutter_basic_nav/screens/setting_screen.dart';
import 'package:flutter_basic_nav/screens/shop_screen.dart';
import 'package:flutter_basic_nav/screens/tracking_screen.dart';
import 'package:go_router/go_router.dart';

final gorouterNotifier = GoRouterNotifier();
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey(debugLabel: "root");
// final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey(debugLabel: "shell");

GoRouter appRouter = GoRouter(
  initialLocation: '/login', 
  refreshListenable: gorouterNotifier, 
  navigatorKey: rootNavigatorKey,
  observers: [appRouteObserver],
  redirect: (context, state) {
    // debugPrint(state.name);
    // debugPrint('Path: ${state.path}');
    // debugPrint('FullPath: ${state.fullPath}');
    // debugPrint(state.matchedLocation);
    // debugPrint(state.pathParameters.toString());
    // debugPrint(state.pageKey.toString());

    // const isFirst = false;
    // const isLoggedIn = false;
    // if (isFirst) {
    //   return '/onboarding';
    // }
    final isLoggedIn = gorouterNotifier.isLoggedIn;
    if (!isLoggedIn) {
      return '/login';
    }

    return null;

  },
  routes: <RouteBase>[
    GoRoute(
      path: '/onboarding',
      name: onboardingRouteName,
      builder: (context, state) => const OnboardingScreen(),      
    ),
    GoRoute(
      path: '/login',
      name: loginRouteName,
      builder: (context, state) => const LoginScreen(),      
    ),
    // GoRoute(
    //   path: '/home',
    //   name: homeRouteName,
    //   builder: (context, state) => const HomeScreen(),      
    // ),
    // GoRoute(
    //   path: '/main',
    //   name: mainRouteName,
    //   builder: (context, state) => const MainScreen(),      
    // ),
    
    
    // shell route
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state, navigationShell) {
        return DashboardScreen(navigationShell: navigationShell);        
      },
      branches: <StatefulShellBranch>[
         // bottom tab - 1 
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/',
              name: homeRouteName,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
         // bottom tab - 2
        StatefulShellBranch(         
          routes: <RouteBase>[
            GoRoute(
              path: '/product',
              name: productRouteName,
              builder: (context, state) {
                return const ProductScreen();
              }, 
              routes: <RouteBase>[
                GoRoute(
                  path: 'product_detail',
                  name: productDetailRouteName,
                  parentNavigatorKey: rootNavigatorKey,                  
                  pageBuilder: (context, state) {
                     final extra = state.extra as Map<String, dynamic>;
                    final name = extra['name'] ?? 'Unknown';
                    final age = extra['age'] ?? 0;
                    final updateName = extra['updateName'] as Function(String);                    
                    
                    return NoTransitionPage(
                      child:  DetailScreen(
                        name: name,
                        age: age,
                        updateName: updateName,
                      ),
                    );
                    
                  },     
                ),                
              ]     
            ),
          ],
        ),
         // bottom tab - 3
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/shop',
              name: shopRouteName,
              builder: (context, state) => const ShopScreen(),
              routes: [
                GoRoute(
                  path: 'tracking/:id',
                  name: trackingRouteName,                  
                  pageBuilder: (context, state) {
                    final name = state.pathParameters['id'] ?? 'Unknown';
                    return CustomTransitionPage(
                      child: TrackingScreen(name: name), 
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return ScaleTransition(scale: animation, child: child);
                      },
                    );

                  },    
                ),
              ]
            ),
          ],
        ),
         // bottom tab - 4
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/setting',
              name: settingRouteName,
              builder: (context, state) => const SettingScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) {
    return const RouteErrorScreen();    
  },
  
);