import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learn_app_plane/models/user_model.dart';

class UserService {
  final CollectionReference _userReference = FirebaseFirestore.instance.collection(
      'users'); // untuk memasukkan maupun mengambil data dari/kedalam database collection yang bernama 'users'

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        //memasukkan data ke dalam field name; email; hobby; balance; dari collection 'users' yang ada difirebase, berdasarkan document id yang yang dimasukkan
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
    DocumentSnapshot snapshot = await _userReference.doc(id).get(); //snapshot adalah object dari firebase cloud firestore, untuk mengambil data dari field berdasarkan id di collection 'users'

    try {
      UserModel user = UserModel(
        id: id,
        name: snapshot['name'], //memanggil field 'name' di id yang ada di collection 'users'
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
