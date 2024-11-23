import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/custom_router.dart';
import 'package:bus_booking/data/dummy_data.dart';
import 'package:bus_booking/presentation/widgets/chair_widget.dart';
import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> chosenSeats = [];

    void changeSeat(String seat) {
      if (!seats.contains(seat)) {
        if (chosenSeats.contains(seat)) {
          chosenSeats.remove(seat);
        } else {
          chosenSeats.add(seat);
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              decoration: BoxDecoration(color: CustomColors.cardColorRed, borderRadius: BorderRadius.circular(1.6)),
              child: const Row(
                children: [
                  Icon(Icons.schedule, color: CustomColors.textColorRed),
                  SizedBox(width: 10),
                  Text.rich(
                    TextSpan(
                      text: 'The remaining time of order',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: CustomColors.textColorRed),
                      children: [
                        TextSpan(
                          text: ' 00:07:20',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: CustomColors.textColorRed),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: CustomColors.blue, width: 1)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1. Cameron Williamson', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: CustomColors.labelMediumBlack)),
                      Icon(Icons.check_circle, color: CustomColors.primaryColor, size: 25),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text('Economy • 8D', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: CustomColors.textColorGrey)),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChairWidget(text: 'Available'),
                ChairWidget(text: 'Selected', color: CustomColors.primaryColor),
                ChairWidget(text: 'Filled', color: CustomColors.blue),
              ],
            ),
            const SizedBox(height: 16),
            Theme(
              data: Theme.of(context).copyWith(
                dividerTheme: const DividerThemeData(
                  color: Colors.transparent,
                  space: 0,
                  thickness: 0,
                  indent: 0,
                  endIndent: 0,
                ),
              ),
              child: Expanded(
                child: SingleChildScrollView(
                  child: DataTable(
                    columnSpacing: 15,
                    dataRowMinHeight: 10,
                    dataRowMaxHeight: 45,
                    headingRowHeight: 35,
                    columns: const [
                      DataColumn(label: Text(' A', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.labelMediumBlack))),
                      DataColumn(label: Text(' B', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.labelMediumBlack))),
                      DataColumn(label: Text(' C', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.labelMediumBlack))),
                      DataColumn(label: Text('')),
                      DataColumn(label: Text(' D', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.labelMediumBlack))),
                      DataColumn(label: Text(' E', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.labelMediumBlack))),
                      DataColumn(label: Text(' F', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CustomColors.labelMediumBlack))),
                    ],
                    rows: List.generate(15, (index) {
                      index++;
                      return DataRow(
                        cells: [
                          DataCell(ChairWidget(
                            isFilled: seats.contains('A$index'),
                            onTap: () => changeSeat('A$index'),
                          )),
                          DataCell(ChairWidget(
                            isFilled: seats.contains('B$index'),
                            onTap: () => changeSeat('B$index'),
                          )),
                          DataCell(ChairWidget(
                            isFilled: seats.contains('C$index'),
                            onTap: () => changeSeat('C$index'),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 19.0,
                            ),
                            child: Text(
                              index.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: CustomColors.textColorGrey,
                              ),
                            ),
                          )),
                          DataCell(ChairWidget(
                            isFilled: seats.contains('D$index'),
                            onTap: () => changeSeat('D$index'),
                          )),
                          DataCell(ChairWidget(
                            isFilled: seats.contains('E$index'),
                            onTap: () => changeSeat('E$index'),
                          )),
                          DataCell(ChairWidget(
                            isFilled: seats.contains('F$index'),
                            onTap: () => changeSeat('F$index'),
                          )),
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SafeArea(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    CustomRouter.ticket,
                    arguments: chosenSeats,
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(context.width * 0.8, 50),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Continue', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
