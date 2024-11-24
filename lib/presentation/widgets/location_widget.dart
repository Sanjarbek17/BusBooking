import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  final String text;
  final String location;
  final Widget icon;
  const LocationWidget({
    super.key,
    required this.text,
    required this.location,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text, style: context.bodyMedium),
            Text(location,
                style: context.bodyLarge?.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                )),
          ],
        ),
      ],
    );
  }
}
