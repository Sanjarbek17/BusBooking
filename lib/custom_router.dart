import 'package:bus_booking/presentation/pages/appview.dart';
import 'package:bus_booking/presentation/pages/booking.dart';
import 'package:bus_booking/presentation/pages/locations.dart';
import 'package:bus_booking/presentation/pages/signin_screen.dart';
import 'package:bus_booking/presentation/pages/signup_screen.dart';
import 'package:bus_booking/presentation/pages/ticket.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  static const String home = '/home';
  static const String locations = '/locations';
  static const String booking = '/booking';
  static const String ticket = '/ticket';
  static const String signIn = '/sign_in';
  static const String signUp = '/sign_up';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const Appview(),
        );
      case locations:
        return MaterialPageRoute(
          builder: (_) => const Locations(),
        );
      case booking:
        return MaterialPageRoute(
          builder: (_) => const Booking(),
        );
      case ticket:
        return MaterialPageRoute(
          builder: (_) {
            final List<String> seats = settings.arguments as List<String>;
            return Ticket(seats: seats);
          },
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
