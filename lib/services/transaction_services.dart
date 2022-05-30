import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:learn_app_plane/models/destination_model.dart';
import 'package:learn_app_plane/models/transaction_model.dart';

class TransactionService {
  final CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReference.add({
        'destination': transaction.destination.toJson(),
        'amountTraveler': transaction.amountTraveler,
        'seat': transaction.seat,
        'insurance': transaction.insurance,
        'refundable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'total': transaction.total,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TransactionModel>> fetchTransaction() async {
    try {
      QuerySnapshot snapshot = await _transactionReference.get();
      List<TransactionModel> transaction = snapshot.docs.map((e) {
        return TransactionModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return transaction;
    } catch (e) {
      rethrow;
    }
  }
}
