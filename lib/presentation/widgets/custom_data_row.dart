
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomDataRow extends StatelessWidget {
  final String title;
  final String value;
  const CustomDataRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CustomColors.locationColorGrey,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CustomColors.textColorBlack,
          ),
        ),
      ],
    );
  }
}