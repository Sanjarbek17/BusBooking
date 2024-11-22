import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/gen/assets.gen.dart';
import 'package:bus_booking/presentation/widgets/badge_widget.dart';
import 'package:bus_booking/presentation/widgets/location_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvailableLocationCard extends StatelessWidget {
  const AvailableLocationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          const Row(
            children: [
              BadgeWidget(
                title: 'Fastest',
                color: CustomColors.badgeColorYellow,
              ),
              BadgeWidget(
                title: 'Mix',
                color: CustomColors.badgeColorGrey,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LocationNameWidget(
                title: 'K. Bali',
                subtitle: 'Halte',
                icon: Icon(Icons.location_on, color: Colors.green),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: CustomColors.badgeColorGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Est. 30 min',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              LocationNameWidget(
                title: 'Senen',
                subtitle: 'Halte',
                icon: SvgPicture.asset(Assets.icons.circle),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              SizedBox(width: 8),
              Icon(Icons.bus_alert, color: CustomColors.locationColorGrey),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bus 01',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.locationColorBlack,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Arrivall in',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: CustomColors.locationColorGrey,
                      ),
                      children: [
                        TextSpan(
                          text: ' 03:45 PM',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: CustomColors.locationColorGrey,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Text.rich(
                TextSpan(
                  text: 'IDR 10.000',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.primaryColor,
                  ),
                  children: [
                    TextSpan(
                      text: '/pax',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.locationColorGrey,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
