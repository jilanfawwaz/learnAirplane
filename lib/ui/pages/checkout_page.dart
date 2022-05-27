import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learn_app_plane/models/transaction_model.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';

class CheckOut extends StatelessWidget {
  final TransactionModel transaction;
  const CheckOut(this.transaction, {Key? key}) : super(key: key);

  Widget headerTitle() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 10),
          height: 132,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/logoCheckout.png",
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CGK",
                    style: cBlackThemeHeadline24,
                  ),
                  Text(
                    "Tangerang",
                    style: cGreyThemeCard14,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "TLC",
                  style: cBlackThemeHeadline24,
                ),
                Text(
                  transaction.destination.location,
                  style: cGreyThemeCard14,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget mainContent() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      margin: EdgeInsets.only(
        top: 30,
      ),
      decoration: BoxDecoration(
        color: cWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: 16,
                ),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: cPurpleColor,
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      image: NetworkImage(transaction.destination.urlImage),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.destination,
                      style: cBlackThemeCard18,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.location,
                      style: cGreyThemeCard14,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 7),
              Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/logoStar.png",
                    width: 18,
                    height: 18,
                  ),
                  SizedBox(width: 5),
                  Text(
                    transaction.destination.rating.toString(),
                    style: cBlackTheme14,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Booking Details",
            style: cBlackTheme16Semibold,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16, top: 10),
            child: Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logoCheck.png"))),
                ),
                Expanded(
                  child: Text(
                    "Traveler",
                    style: cBlackTheme14Regular,
                  ),
                ),
                Text(
                  "${transaction.amoutTraveler} Persons",
                  style: cBlackTheme14Semibold,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logoCheck.png"))),
                ),
                Expanded(
                  child: Text(
                    "Seat",
                    style: cBlackTheme14Regular,
                  ),
                ),
                Text(
                  transaction.seat,
                  style: cBlackTheme14Semibold,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logoCheck.png"))),
                ),
                Expanded(
                  child: Text(
                    "Insurance",
                    style: cBlackTheme14Regular,
                  ),
                ),
                Text(
                  transaction.insurance ? "YES" : "NO",
                  style: cGreenTheme14Semibold,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logoCheck.png"))),
                ),
                Expanded(
                  child: Text(
                    "Refundable",
                    style: cBlackTheme14Regular,
                  ),
                ),
                Text(
                  transaction.refundable ? "YES" : "NO",
                  style: cRedTheme14Semibold,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logoCheck.png"))),
                ),
                Expanded(
                  child: Text(
                    "VAT",
                    style: cBlackTheme14Regular,
                  ),
                ),
                Text(
                  "${(transaction.vat * 100).toInt()}%",
                  style: cBlackTheme14Semibold,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logoCheck.png"))),
                ),
                Expanded(
                  child: Text(
                    "Price",
                    style: cBlackTheme14Regular,
                  ),
                ),
                Text(
                  NumberFormat.currency(
                    locale: 'id',
                    symbol: 'IDR ',
                    decimalDigits: 0,
                  ).format(transaction.price),
                  style: cBlackTheme14Semibold,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logoCheck.png"))),
                ),
                Expanded(
                  child: Text(
                    "Grand Total",
                    style: cBlackTheme14Regular,
                  ),
                ),
                Text(
                  NumberFormat.currency(
                    locale: 'id',
                    symbol: 'IDR ',
                    decimalDigits: 0,
                  ).format(transaction.total),
                  style: cBlackTheme14Semibold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget paymentDetail() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      margin: EdgeInsets.only(
        top: 30,
        bottom: 30,
      ),
      decoration: BoxDecoration(
        color: cWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Details",
            style: cBlackTheme16Semibold,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logoPay.png"))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "IDR 80.400.000",
                    style: cBlackTheme18Medium,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Current Balance",
                    style: cGreyThemeCard14,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget termsAndConditions() {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Terms And Conditions",
        style: cGreyTheme16Light.copyWith(decoration: TextDecoration.underline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cGreyBacgroundColor,
      body: ListView(
        padding: EdgeInsets.only(top: 50, bottom: 30, left: 24, right: 24),
        children: [
          Column(
            children: [
              headerTitle(),
              mainContent(),
              paymentDetail(),
              CustomButton(
                cText: "Pay Now",
                onPressed: () {
                  Navigator.pushNamed(context, '/success');
                },
                cWidth: double.infinity,
                cMargin: EdgeInsets.only(bottom: 30),
              ),
              termsAndConditions(),
            ],
          ),
        ],
      ),
    );
  }
}
