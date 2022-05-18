//import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learn_app_plane/models/user_model.dart';
import 'package:learn_app_plane/services/auth_services.dart';
import 'package:learn_app_plane/services/user_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp({
    required String name,
    required String email,
    required String password,
    String hobby = '',
  }) async {
    try {
      emit(AuthLoading()); //state diubah menjadi loading

      UserModel user = await AuthService().signUp( //ketika state masih loading,disini akan dilakukan inisialisasi VariabelObject UserModel(untuk dimasukkan ke AuthSuccess) sekaligus pembuatan akun di AuthService signUp dan memasukkan data ke firebase
        name: name,
        email: email,
        password: password,
        hobby: hobby,
      );

      emit(AuthSuccess(user)); //nilai UserModel dimasukkan ke sini, nanti di Page akan ada pengkondisian yang memanggil data berdasarkan data yang disimpan state success
    } catch (e) {
      emit(AuthFailed(e.toString())); //memasukkan pesan error, ketika state error, maka pesan string error yang ditampilkan di state ini akan ditampilkan
    }
  }

  void signOut() async {
    try {
      emit(AuthLoading());
      await AuthService().signOut(); // memanggil fungsi sigOut di AuthServices untuk mengakhiri session
      emit(AuthInitial()); //kondisi dikembalikan ke initial
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void getCurrentUser(String id) async { //dipanggil di halaman splashPage, kalau app direstart, mengambil data dari firebase berdasarkan id yang aktif
    try {
      UserModel user = await UserService().getUserById(id);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signIn({
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());
      UserModel user =
          await AuthService().signIn(email: email, password: password); //mengambil data user dari proses di authService, kemudian data ini diinisialisasi ke userModel untuk dimasukkan ke authSuccess
      emit(AuthSuccess(user)); //data signIn dimasukkan ke state success
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
