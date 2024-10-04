import 'package:bookly/features/book_details/presentaion/view/book_details_view.dart';
import 'package:bookly/features/home/presentaion/views/home_view.dart';
import 'package:bookly/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/homeView',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            path: '/detailsView',
            builder: (BuildContext context, GoRouterState state) {
              return const BookDetailsView();
            },
          ),
        ],
      ),
    ],
  );
}
