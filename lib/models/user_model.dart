import 'package:equatable/equatable.dart';
//import 'package:learn_app_plane/ui/pages/splash_page.dart';

class UserModel extends Equatable {
  final String id;
  final String name;
  final String email;
  //final String passsword;
  final String hobby;
  final int balance;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    //required this.passsword,
    this.hobby = "",
    this.balance = 0,
  });

  @override
  List<Object?> get props => [id, name, email, hobby, balance]; 
  // menyimpan data ke dalam list object
}
