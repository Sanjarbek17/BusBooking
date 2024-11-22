import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChairWidget extends StatefulWidget {
  final String? text;
  final Color? color;
  final bool? isFilled;
  final VoidCallback? onTap;
  const ChairWidget({
    super.key,
    this.color,
    this.text,
    this.isFilled,
    this.onTap,
  });

  @override
  State<ChairWidget> createState() => _ChairWidgetState();
}

class _ChairWidgetState extends State<ChairWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        if (widget.isFilled == true) {
          return;
        }
        widget.onTap?.call();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            Assets.icons.chair,
            width: 20,
            height: 25,
            colorFilter: ColorFilter.mode(
              widget.isFilled == true ? CustomColors.blue : (isSelected ? CustomColors.primaryColor : (widget.color ?? CustomColors.textColorGrey)),
              BlendMode.srcIn,
            ),
          ),
          if (widget.text != null) const SizedBox(width: 8),
          if (widget.text != null) Text(widget.text!, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: CustomColors.labelMediumBlack)),
        ],
      ),
    );
  }
}
