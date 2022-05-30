import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_app_plane/cubit/transaction_cubit.dart';
import 'package:learn_app_plane/models/transaction_model.dart';
import 'package:learn_app_plane/shared/theme.dart';
//import 'package:learn_app_plane/models/transaction_model.dart';
import 'package:learn_app_plane/ui/widget/transaction_card.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransaction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransactionCubit, TransactionState>(
      listener: (context, state) {
        if (state is TransactionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: cRedColor,
            content: Text(state.error),
          ));
        }
      },
      builder: (context, state) {
        if (state is TransactionSuccess) {
          if (state.transaction.length == 0) {
            return Center(
              child: Text("You Have No Transaction"),
            );
          } else {
            return ListView.builder(
                itemCount: state.transaction.length,
                padding: EdgeInsets.all(25),
                itemBuilder: (context, index) => TransactionCard(
                      state.transaction[index],
                    ));

            /*return ListView(
              padding: EdgeInsets.all(25),
              children: [
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Booking",
                      style: cBlackTheme32Semibold,
                    ),
                    Column(
                      children: state.transaction
                          .map((TransactionModel e) => TransactionCard(e))
                          .toList(),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ],
            );*/
          }
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
