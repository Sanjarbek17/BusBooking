import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/presentation/widgets/available_location_card.dart';
import 'package:flutter/material.dart';

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Location1-Location2'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const AvailableLocationCard();
          },
        ),
      ),
    );
  }
}
