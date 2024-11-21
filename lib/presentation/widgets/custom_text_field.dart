
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String icon;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIconConstraints: const BoxConstraints(
            minWidth: 23,
            minHeight: 23,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(icon),
          ),
          hintText: hintText,
          hintStyle: context.labelLarge,
        ),
      ),
    );
  }
}
