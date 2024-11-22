
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final String title;
  final Color color;
  const BadgeWidget({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        title,
        style: title == 'Mix' ? context.bodySmall?.copyWith(color: Colors.black) : context.bodySmall,
      ),
    );
  }
}
