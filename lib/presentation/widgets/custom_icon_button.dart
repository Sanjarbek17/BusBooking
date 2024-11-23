import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  const CustomIconButton({
    super.key,
    required this.icon, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(0),
        backgroundColor: CustomColors.secondaryColor,
        minimumSize: const Size(35, 28),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(169),
        ),
      ),
      icon: Icon(icon, color: Colors.white),
    );
  }
}
