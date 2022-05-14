import 'package:firebase_auth/firebase_auth.dart';
import 'package:learn_app_plane/models/user_model.dart';
import 'package:learn_app_plane/services/user_services.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String name,
    required String email,
    required String password,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
        id: userCredential.user!.uid,
        name: name,
        email: email,
        hobby: hobby,
        balance: 280000000,
      );

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
