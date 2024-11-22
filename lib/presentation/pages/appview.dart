import 'package:bus_booking/gen/assets.gen.dart';
import 'package:bus_booking/presentation/pages/home_screen.dart';
import 'package:bus_booking/presentation/pages/orders_screen.dart';
import 'package:flutter/material.dart';

class Appview extends StatefulWidget {
  const Appview({super.key});

  @override
  State<Appview> createState() => _AppviewState();
}

class _AppviewState extends State<Appview> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomeScreen(),
          OrdersScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, -2),
              blurRadius: 15,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: _currentIndex != 0 ? null : Colors.grey.shade200,
              ),
              icon: Image.asset(Assets.images.home.path, width: 42),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                  _pageController.animateToPage(
                    _currentIndex,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                });
              },
            ),
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: _currentIndex != 1 ? null : Colors.grey.shade200,
              ),
              icon: Image.asset(Assets.images.busTicket.path, width: 42),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                  _pageController.animateToPage(
                    _currentIndex,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                });
              },
            ),
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: _currentIndex != 2 ? null : Colors.grey.shade200,
              ),
              icon: Image.asset(Assets.images.clock.path, width: 42),
              onPressed: () {},
            ),
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: _currentIndex != 3 ? null : Colors.grey.shade200,
              ),
              icon: Image.asset(Assets.images.profile.path, width: 47),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
