import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
//import 'package:learn_app_plane/cubit/auth_cubit.dart';
//import 'package:learn_app_plane/cubit/auth_cubit.dart';
import 'package:learn_app_plane/models/transaction_model.dart';
import 'package:learn_app_plane/services/transaction_services.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());

      await TransactionService().createTransaction(transaction);

      emit(TransactionSuccess([]));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }

  void fetchTransaction() async {
    try {
      emit(TransactionLoading());

      List<TransactionModel> transaction =
          await TransactionService().fetchTransaction();

      emit(TransactionSuccess(transaction));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}
