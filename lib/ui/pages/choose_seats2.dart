import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:learn_app_plane/cubit/seat_cubit.dart';
import 'package:learn_app_plane/models/destination_model.dart';
import 'package:learn_app_plane/models/transaction_model.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/pages/checkout_page.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';
import 'package:learn_app_plane/ui/widget/seat_item.dart';

class ChooseSeats extends StatelessWidget {
  final DestinationModel destination;

  const ChooseSeats(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerTitle() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Your\nFavorite Seat",
              style: cBlackThemeHeadline24,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/logo1Available.png"),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(0, 4)),
                            ],
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Available",
                        style: cBlackTheme14Regular,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/logo1Selected.png",
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Selected",
                        style: cBlackTheme14Regular,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/logo1Unavailable.png",
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Unavailable",
                        style: cBlackTheme14Regular,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget mainContent() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          state.sort();
          return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 22,
            ),
            decoration: BoxDecoration(
              color: cWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "A",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "B",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "C",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "D",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SeatItem(
                      id: "A1",
                      isAvailable: false,
                    ),
                    SeatItem(
                      id: "B1",
                      isAvailable: false,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      margin: EdgeInsets.only(
                        top: 16,
                      ),
                      child: Center(
                        child: Text(
                          "1",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                    SeatItem(
                      id: "C1",
                    ),
                    SeatItem(
                      id: "D1",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SeatItem(
                      id: "A2",
                    ),
                    SeatItem(
                      id: "B2",
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      margin: EdgeInsets.only(
                        top: 16,
                      ),
                      child: Center(
                        child: Text(
                          "2",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                    SeatItem(
                      id: "C2",
                    ),
                    SeatItem(
                      id: "D2",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SeatItem(
                      id: "A3",
                    ),
                    SeatItem(
                      id: "B3",
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      margin: EdgeInsets.only(
                        top: 16,
                      ),
                      child: Center(
                        child: Text(
                          "3",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                    SeatItem(
                      id: "C3",
                    ),
                    SeatItem(
                      id: "D3",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SeatItem(
                      id: "A4",
                    ),
                    SeatItem(
                      id: "B4",
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      margin: EdgeInsets.only(
                        top: 16,
                      ),
                      child: Center(
                        child: Text(
                          "4",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                    SeatItem(
                      id: "C4",
                    ),
                    SeatItem(
                      id: "D4",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SeatItem(
                      id: "A5",
                    ),
                    SeatItem(
                      id: "B5",
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      margin: EdgeInsets.only(
                        top: 16,
                      ),
                      child: Center(
                        child: Text(
                          "5",
                          style: cGreyThemeCard16Regular,
                        ),
                      ),
                    ),
                    SeatItem(
                      id: "C5",
                    ),
                    SeatItem(
                      id: "D5",
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Your seat",
                          style: cGreyThemeCard14,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          //state.toString(),
                          state.isEmpty ? "No Seat Selected" : state.join(', '),
                          style: cBlackTheme16Medium,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Total",
                          style: cGreyThemeCard14,
                        ),
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                            .format(state.length * destination.price),
                        style: cPurpleTheme16Semibold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget checkOutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            cText: "Continue Checkout",
            onPressed: () {
              int price = destination.price * state.length;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckOut(
                    TransactionModel(
                      destination: destination,
                      amountTraveler: state.length,
                      seat: state.join(', '),
                      vat: 0.45,
                      price: price,
                      total: price + (0.45 * price).toInt(),
                    ),
                  ),
                ),
              );
            },
            cMargin: EdgeInsets.only(
              top: 30,
            ),
            cWidth: double.infinity,
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: cGreyBacgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 24,
          ),
          children: [
            Column(
              children: [
                headerTitle(),
                mainContent(),
                checkOutButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
