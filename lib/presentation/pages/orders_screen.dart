import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/gen/assets.gen.dart';
import 'package:bus_booking/presentation/widgets/badge_widget.dart';
import 'package:bus_booking/presentation/widgets/location_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Orders'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 75),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(19),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    QrImageView(
                      data: 'https://me-qr.com/J6ROxssj',
                      version: QrVersions.auto,
                      size: 190.0,
                    ),
                    const SizedBox(height: 16),
                    const Text('Booking Code', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: CustomColors.locationColorGrey)),
                    const SizedBox(height: 10),
                    const Text('BUS01150224', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.locationColorBlack)),
                    const SizedBox(height: 16),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Text('Mon, 19 February 2024', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: CustomColors.locationColorBlack)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        BadgeWidget(title: 'Fastest', color: CustomColors.primaryColor),
                        BadgeWidget(title: 'Mix', color: CustomColors.badgeColorGrey),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const LocationNameWidget(
                          title: 'K. Bali',
                          subtitle: 'Halte',
                          icon: Icon(Icons.location_on, color: Colors.green),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(color: CustomColors.badgeColorGrey, borderRadius: BorderRadius.circular(8)),
                          child: const Text('Est. 30 min', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.black)),
                        ),
                        LocationNameWidget(
                          title: 'Senen',
                          subtitle: 'Halte',
                          icon: SvgPicture.asset(Assets.icons.circle),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const SizedBox(width: 8),
                        const Icon(Icons.bus_alert, color: CustomColors.locationColorGrey),
                        const SizedBox(width: 8),
                        Row(
                          children: [
                            const Text('Bus 01   ', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: CustomColors.locationColorBlack)),
                            SizedBox(
                              width: context.width * 0.5,
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Arrivall in',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: CustomColors.locationColorGrey),
                                  children: [
                                    TextSpan(
                                      text: ' 03:45 PM',
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: CustomColors.locationColorGrey),
                                    ),
                                    TextSpan(
                                      text: ' ate Halte Kampung Bali',
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: CustomColors.locationColorGrey),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
