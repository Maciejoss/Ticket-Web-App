import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app_web/pages/auth/login_page/login_page.dart';
import 'package:ticket_app_web/pages/auth/register_page/register_page.dart';
import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return LoginPage();
        }),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterPage();
      },
    )
  ],
);
