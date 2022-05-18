part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final UserModel user;

  AuthSuccess(this.user);

  @override
  List<Object> get props => [user];
  // ketika sukses maka state saat ini akan dimasukkan data dari form ketika proses signUp/signIn, jadi di file page akan ada pengkondisian, jika state is success, maka nilai state akan ditampilkan seperti state.user.nama atau state.user.email
}

class AuthFailed extends AuthState {
  final String error;

  AuthFailed(this.error);

  @override
  List<Object> get props => [error];
  // ketika kondisi sate eror, maka pesan eror yang yang disimpan di state ini akan ditampilkan
}
