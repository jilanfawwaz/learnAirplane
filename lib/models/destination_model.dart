import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String destination;
  final String location;
  final String urlImage;
  final String about;
  final double rating;
  final int price;

  const DestinationModel({
    required this.id,
    required this.destination,
    required this.location,
    this.rating = 0.0,
    this.price = 0,
    this.about = "",
    required this.urlImage,
  });

  factory DestinationModel.fromJson(
          String id,
          Map<String, dynamic>
              json) => //method menyimpan file dari json, dan di parsing menjadi beberapa tabel (destination, location, dll)
      DestinationModel(
        id: id,
        destination: json['destination'],
        location: json['location'],
        urlImage: json['urlImage'],
        about: json['about'],
        price: json['price'],
        rating: json['nilai'].toDouble(),
      );

  /*Map<String, dynamic> toJson() => {
        'id': id,
        'destination': destination,
        'location': location,
        'urlImage': urlImage,
        'about': about,
        'price': price,
        'rating': rating,
      };*/

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'destination': destination,
      'location': location,
      'urlImage': urlImage,
      'about': about,
      'price': price,
      'rating': rating,
    };
  }

  /*factory DestinationModel.fromJson(String id, Map<String, dynamic> json) {
    
    return DestinationModel(
      id: id,
      destination: json['destination'],
      location: json['location'],
      urlImage: json['urlImage'],
      rating: json['rating'],
      price: json['price'],
    );
  }*/

  @override
  List<Object?> get props =>
      [id, destination, location, rating, price, urlImage, about];
}
