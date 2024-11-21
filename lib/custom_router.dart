import 'package:bus_booking/presentation/pages/home_screen.dart';
import 'package:bus_booking/presentation/pages/signin_screen.dart';
import 'package:bus_booking/presentation/pages/signup_screen.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  static const String home = '/';
  static const String signIn = '/sign_in';
  static const String signUp = '/sign_up';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case signIn:
        return MaterialPageRoute(
          builder: (_) => const SigninScreen(),
        );
      case signUp:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}