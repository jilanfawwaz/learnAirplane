import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learn_app_plane/models/user_model.dart';

class UserService {
  final CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'name': user.name,
        'email': user.email,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> getUserById(String id) async {
    DocumentSnapshot snapshot = await _userReference.doc(id).get();

    try {
      UserModel user = UserModel(
        id: id,
        name: snapshot['name'],
        email: snapshot['email'],
        hobby: snapshot['hobby'],
        balance: snapshot['balance'],
      );

      return user;
    } catch (e) {
      rethrow;
    }
  }
}
