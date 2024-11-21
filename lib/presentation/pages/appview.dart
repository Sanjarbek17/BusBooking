import 'package:bus_booking/gen/assets.gen.dart';
import 'package:bus_booking/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class Appview extends StatelessWidget {
  const Appview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [HomeScreen()],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.asset(Assets.images.home.path, width: 42),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(Assets.images.busTicket.path, width: 42),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(Assets.images.clock.path, width: 42),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(Assets.images.profile.path, width: 47),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
