//import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learn_app_plane/models/user_model.dart';
import 'package:learn_app_plane/services/auth_services.dart';

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
      emit(AuthLoading());

      UserModel user = await AuthService().signUp(
        name: name,
        email: email,
        password: password,
        hobby: hobby,
      );

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
