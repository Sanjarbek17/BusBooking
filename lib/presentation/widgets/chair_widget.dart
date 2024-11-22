import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChairWidget extends StatelessWidget {
  final String? text;
  final Color? color;
  const ChairWidget({
    super.key,
    this.color,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.icons.chair,
          width: 16,
          height: 16,
          colorFilter: color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
        ),
        const SizedBox(width: 8),
        if (text != null) Text(text!, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: CustomColors.labelMediumBlack)),
      ],
    );
  }
}
