import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/custom_router.dart';
import 'package:bus_booking/gen/assets.gen.dart';
import 'package:bus_booking/presentation/widgets/badge_widget.dart';
import 'package:bus_booking/presentation/widgets/custom_button.dart';
import 'package:bus_booking/presentation/widgets/custom_data_row.dart';
import 'package:bus_booking/presentation/widgets/location_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Ticket extends StatelessWidget {
  final List<String> seats;
  const Ticket({super.key, required this.seats});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket'),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: CustomButton(
            text: 'Continue',
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                CustomRouter.home,
                (route) => false,
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
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
                const Text(
                  'Scan the barcode or enter the booking code when getting on the bus.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: CustomColors.locationColorGrey),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text('Mon, 19 February 2024', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: CustomColors.locationColorBlack)),
                  ],
                ),
                const SizedBox(height: 10),
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
                        const Text('Bus 01   ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: CustomColors.locationColorBlack)),
                        SizedBox(
                          width: context.width * 0.6,
                          child: const Text.rich(
                            TextSpan(
                              text: 'Arrivall in',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: CustomColors.locationColorGrey),
                              children: [
                                TextSpan(
                                  text: ' 03:45 PM',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: CustomColors.locationColorGrey),
                                ),
                                TextSpan(
                                  text: ' ate Halte Kampung Bali',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: CustomColors.locationColorGrey),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Text('Customer Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: CustomColors.locationColorBlack)),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  width: context.width,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(border: Border.all(color: CustomColors.locationColorGrey, width: 1), borderRadius: BorderRadius.circular(12)),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Olivia Rhye', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: CustomColors.locationColorBlack)),
                      Text('oliviarhye@gmail.com', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: CustomColors.textColorGrey)),
                      Text('+62 812 3456 7890', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: CustomColors.textColorGrey)),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Text('Payment Details', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: CustomColors.locationColorBlack)),
                  ],
                ),
                const SizedBox(height: 8),
                const CustomDataRow(
                  title: 'Ticket Price',
                  value: 'IDR 10.000',
                ),
                CustomDataRow(
                  title: 'Tickets Count',
                  value: '${seats.length}',
                ),
                const Divider(color: CustomColors.badgeColorGrey),
                CustomDataRow(
                  title: 'Total Ticket Price',
                  value: 'IDR ${seats.length * 10000}',
                ),
                const Divider(color: CustomColors.badgeColorGrey),
                const CustomDataRow(
                  title: 'Protection',
                  value: 'IDR 10.000',
                ),
                const Divider(color: CustomColors.badgeColorGrey),
                const CustomDataRow(
                  title: 'Convenience Fee',
                  value: 'IDR 5.000',
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Text('Total', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: CustomColors.locationColorBlack)),
                    Spacer(),
                    Text('IDR 45.000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: CustomColors.blue)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
