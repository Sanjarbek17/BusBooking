import 'dart:math' as math;

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:bus_booking/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ChooseLocationWidget extends StatefulWidget {
  const ChooseLocationWidget({
    super.key,
  });

  @override
  State<ChooseLocationWidget> createState() => _ChooseLocationWidgetState();
}

class _ChooseLocationWidgetState extends State<ChooseLocationWidget> with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool isAnimated = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(38.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 3, spreadRadius: 1, offset: const Offset(0, 4))],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, _controller.value * 80),
                    child: child,
                  );
                },
                child: Row(
                  children: [
                    Image.asset(Assets.images.telegram.path, width: 40),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('FROM', style: context.bodyMedium),
                        Text('Location 1', style: context.bodyLarge),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, _controller.value * -80),
                    child: child,
                  );
                },
                child: Row(
                  children: [
                    Image.asset(Assets.images.location.path, width: 40),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('TO', style: context.bodyMedium),
                        Text('Location 2', style: context.bodyLarge),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              if (isAnimated) {
                _controller.animateBack(0);
              } else {
                _controller.animateTo(1);
              }
              setState(() {
                isAnimated = !isAnimated;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 3, spreadRadius: 1, offset: const Offset(0, 4))],
              ),
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: math.pi * _controller.value,
                    child: child,
                  );
                },
                child: Image.asset(Assets.images.swapNoShadow.path, height: 62, width: 62),
              ),
            ),
          ),
        ],
      ),
    );
  }
}