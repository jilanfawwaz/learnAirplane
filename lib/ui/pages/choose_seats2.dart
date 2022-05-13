import 'package:flutter/material.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';
import 'package:learn_app_plane/ui/widget/seat_item.dart';

class ChooseSeats extends StatelessWidget {
  const ChooseSeats({Key? key}) : super(key: key);

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
                      "A",
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
                  indexStatus: 2,
                ),
                SeatItem(
                  indexStatus: 2,
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
                  indexStatus: 0,
                ),
                SeatItem(
                  indexStatus: 2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SeatItem(
                  indexStatus: 0,
                ),
                SeatItem(
                  indexStatus: 0,
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
                  indexStatus: 0,
                ),
                SeatItem(
                  indexStatus: 2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SeatItem(
                  indexStatus: 1,
                ),
                SeatItem(
                  indexStatus: 1,
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
                  indexStatus: 0,
                ),
                SeatItem(
                  indexStatus: 0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SeatItem(
                  indexStatus: 0,
                ),
                SeatItem(
                  indexStatus: 2,
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
                  indexStatus: 0,
                ),
                SeatItem(
                  indexStatus: 0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SeatItem(
                  indexStatus: 0,
                ),
                SeatItem(
                  indexStatus: 0,
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
                  indexStatus: 2,
                ),
                SeatItem(
                  indexStatus: 0,
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
                  Text(
                    "A3,B3",
                    style: cBlackTheme16Medium,
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
                    "IDR 540.000.000",
                    style: cPurpleTheme16Semibold,
                  ),
                ],
              ),
            ),
          ],
        ),
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
                CustomButton(
                  cText: "Continue Checkout",
                  cDestination: '/checkout',
                  cMargin: EdgeInsets.only(
                    top: 30,
                  ),
                  cWidth: double.infinity,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
