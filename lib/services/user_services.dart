import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learn_app_plane/models/user_model.dart';

class UserService {
  CollectionReference _userReference =
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
      throw e;
    }
  }
}
