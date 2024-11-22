
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class LocationNameWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icon;
  const LocationNameWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        icon,
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: CustomColors.locationColorGrey,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: CustomColors.locationColorBlack,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
