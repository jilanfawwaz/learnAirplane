import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:learn_app_plane/models/destination_model.dart';

class DestinationServices {
  CollectionReference _destinationReference =
      FirebaseFirestore.instance.collection("destination");

  Future<List<DestinationModel>> fetchDestination() async {
    try {
      QuerySnapshot snapshot = await _destinationReference.get();

      List<DestinationModel> destination = snapshot.docs.map((e) {
        return DestinationModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destination;
    } catch (e) {
      rethrow;
    }
  }
}
