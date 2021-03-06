import 'package:equatable/equatable.dart';
import 'package:learn_app_plane/models/destination_model.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final String id;
  final int amountTraveler;
  final String seat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int total;

  TransactionModel({
    required this.destination,
    this.id = '',
    this.amountTraveler = 0,
    this.seat = '',
    this.insurance = true,
    this.refundable = false,
    this.vat = 0.0,
    this.price = 0,
    this.total = 0,
  });

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) {
    return TransactionModel(
      id: id,
      destination: DestinationModel.fromJson(
          json['destination']['id'], json['destination']),
      amountTraveler: json['amountTraveler'],
      seat: json['seat'],
      insurance: json['insurance'],
      refundable: json['refundable'],
      vat: json['vat'].toDouble(),
      price: json['price'],
      total: json['total'],
    );
  }

  @override
  List<Object?> get props => [
        destination,
        amountTraveler,
        seat,
        insurance,
        refundable,
        vat,
        price,
        total,
      ];
}
