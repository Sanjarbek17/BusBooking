import 'package:equatable/equatable.dart';

class TicketModel extends Equatable {
  final String location1;
  final String location2;
  final String bus;
  final List<String> badges;
  final String price;
  final List seats;

  const TicketModel({
    required this.location1,
    required this.location2,
    required this.bus,
    required this.badges,
    required this.price,
    required this.seats,
  });

  @override
  List<Object?> get props => [location1, location2, price];
}
