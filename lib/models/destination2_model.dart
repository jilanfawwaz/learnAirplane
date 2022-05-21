import 'package:equatable/equatable.dart';

class Destination2Model extends Equatable {
  final String id;
  final String destination;
  final String location;
  final String urlImage;
  final int price;
  final double rating;

  Destination2Model({
    required this.id,
    required this.destination,
    required this.location,
    required this.urlImage,
    this.price = 0,
    this.rating = 0.0,
  });

  factory Destination2Model.fromJson(String id, Map<String, dynamic> json) {
    return Destination2Model(
      id: id,
      destination: json['destination'],
      location: json['location'],
      urlImage: json['urlImage'],
      price: json['price'],
      rating: json['nilai'].toDouble(),
    );
  }

  @override
  List<Object?> get props =>
      [id, destination, location, urlImage, price, rating];
}
