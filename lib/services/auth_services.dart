import 'package:firebase_auth/firebase_auth.dart';
import 'package:learn_app_plane/models/user_model.dart';
import 'package:learn_app_plane/services/user_services.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth
      .instance; //firebase auth ini untuk melakukan request langsung ke firebase, jadi fungsi _auth nanti untuk melakukan request ke firebase

  Future<UserModel> signUp({
    required String name,
    required String email,
    required String password,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          //userCredential adalah object dari firebase untuk menyimpan data hasil request dari FirebaseAuth
          email: email,
          password: password); // meggenerate akun baru beserta id nya, auth ini juga akan berfungsi seperti session, ketika auth di signout maka session berakhir

      UserModel user = UserModel(
        //VariabelObject UserModel ini akan dimasukkan ke userservice setuser untuk memasukkan data ke database firebase
        id: userCredential.user!.uid, //id baru dari hasil generate
        name: name,
        email: email,
        hobby: hobby,
        balance: 280000000,
      );

      await UserService().setUser(
          user); // memasukkan nilai dari Form ke dalam database firebase

      return user; //return untuk dimasukkan ke dalam variabel UserModel di authCubit, yang kemudian akan dimasukkan ke authSuccess
    } catch (e) {
      rethrow; // sama seperti throw e; pesan akan dilempar yang muaranya di authCubit
    }
  }

  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        //memanggil fungsi signin firebase berdasarkan email dan password
        // session _auth diaktifkan
        email: email,
        password: password,
      );

      UserModel user = await UserService()
          .getUserById(userCredential.user!.uid); //mengambil data dari firebase

      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut(); // session _auth di firebase berakhir
    } catch (e) {
      rethrow;
    }
  }
}
