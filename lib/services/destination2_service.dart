import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learn_app_plane/models/destination2_model.dart';

class Destination2Service {
  CollectionReference _destinationReference =
      FirebaseFirestore.instance.collection("destination2");

  Future<List<Destination2Model>> fetchDestination() async {
    try {
      QuerySnapshot snapshot = await _destinationReference.get();

      List<Destination2Model> destination = snapshot.docs.map((e) {
        return Destination2Model.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destination;
    } catch (e) {
      rethrow;
    }
  }
}
