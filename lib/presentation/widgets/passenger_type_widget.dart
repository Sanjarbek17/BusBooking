import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/presentation/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PassengerTypeWidget extends StatefulWidget {
  const PassengerTypeWidget({
    super.key,
  });

  @override
  State<PassengerTypeWidget> createState() => _PassengerTypeWidgetState();
}

class _PassengerTypeWidgetState extends State<PassengerTypeWidget> {
  int passengerCount = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 3,
            spreadRadius: 1,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 39,
                height: 32,
                decoration: BoxDecoration(
                  color: CustomColors.secondaryColor,
                  borderRadius: BorderRadius.circular(169),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  Text('PASSENGER', style: context.bodyLarge?.copyWith(color: CustomColors.bodyMediumColor)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomIconButton(
                        icon: Icons.remove,
                        onTap: () {
                          if (passengerCount > 0) {
                            setState(() {
                              passengerCount--;
                            });
                          }
                        },
                      ),
                      Text(passengerCount.toString().padLeft(2, '0'), style: context.bodyLarge),
                      CustomIconButton(
                        icon: Icons.add,
                        onTap: () {
                          setState(() {
                            passengerCount++;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Type', style: context.bodyLarge?.copyWith(color: CustomColors.bodyMediumColor)),
                  Text('TYPE', style: context.bodyLarge),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 39,
                height: 32,
                decoration: BoxDecoration(
                  color: CustomColors.primaryColor,
                  borderRadius: BorderRadius.circular(169),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('DEPART', style: context.bodyLarge?.copyWith(color: CustomColors.bodyMediumColor)),
                  Text('Sun 14 Jul 2024', style: context.bodyLarge),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
