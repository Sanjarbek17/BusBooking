import 'package:bus_booking/core/theme/custom_theme.dart';
import 'package:bus_booking/custom_router.dart';
import 'package:bus_booking/presentation/pages/signin_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Ticket Booking',
      theme: themeData,
      home: const SigninScreen(),
      onGenerateRoute: CustomRouter.generateRoute,
      initialRoute: CustomRouter.home,
    );
  }
}
