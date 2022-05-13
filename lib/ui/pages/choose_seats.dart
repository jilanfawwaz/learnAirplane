/*import 'package:flutter/material.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';

class ChooseSeats extends StatefulWidget {
  const ChooseSeats({Key? key}) : super(key: key);

  @override
  State<ChooseSeats> createState() => _ChooseSeatsState();
}

class _ChooseSeatsState extends State<ChooseSeats> {
  late bool selectIsAvailable;
  late bool selectIsSelected;
  //List<bool> seatIndex = [];
  var seatIndex = List.filled(20, false);

  @override
  Widget build(BuildContext context) {
    /*Widget inisialisasiSeat() {
      for (int i = 0; i < 20; i++) {
        seatIndex[i] = false;
      }
      ;
      return SizedBox();
    }*/

    Widget seatBox(
        {int index = 0, bool isAvailable = true, bool isSelected = false}) {
      return isAvailable
          ? GestureDetector(
              onTap: () {
                setState(() {
                  !seatIndex[index]
                      ? seatIndex[index] = true
                      : seatIndex[index] = false;
                });
              },
              child: Container(
                margin: EdgeInsets.only(top: 16),
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: seatIndex[index]
                        ? AssetImage("assets/images/logo1Booked.png")
                        : AssetImage("assets/images/logo1Available.png"),
                  ),
                ),
              ),
            )
          : Container(
              margin: EdgeInsets.only(top: 16),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo1Unavailable.png"),
                ),
              ),
            );
    }

    Widget seatRow({String seatRow = ''}) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        width: 48,
        height: 48,
        /*decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo1Unavailable.png"),
                ),
              ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(seatRow, style: cGreyThemeCard16Regular),
          ],
        ),
      );
    }

    Widget headerTitle() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Your\nFavorite Seat",
            style: cBlackThemeHeadline24,
          ),

          // NOTE: Available box explanator
          Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 30),
                    child: Row(
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/logo1Available.png"),
                            ),
                            boxShadow: [
                              BoxShadow(
                                //spreadRadius: 4,
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(0, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Available",
                          style: cBlackTheme14Regular,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 30),
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 30),
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    }

    Widget contentSeat() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: cWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A",
                        style: cGreyThemeCard16Regular,
                      ),

                      //NOTE: NBOXAVAILABLE
                      seatBox(
                        index: 0,
                        isAvailable: false,
                      ),
                      seatBox(
                        index: 1,
                      ),
                      seatBox(
                        index: 2,
                      ),
                      seatBox(
                        index: 3,
                      ),
                      seatBox(
                        index: 4,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "B",
                        style: cGreyThemeCard16Regular,
                      ),

                      //NOTE: NBOXAVAILABLE
                      seatBox(
                        index: 5,
                        isAvailable: false,
                      ),
                      seatBox(
                        index: 6,
                      ),
                      seatBox(
                        index: 7,
                      ),
                      seatBox(
                        index: 8,
                        isAvailable: false,
                      ),
                      seatBox(
                        index: 9,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "",
                        style: cGreyThemeCard16Regular,
                      ),

                      //NOTE: NBOXAVAILABLE
                      seatRow(
                        seatRow: "1",
                      ),
                      seatRow(
                        seatRow: "2",
                      ),
                      seatRow(
                        seatRow: "3",
                      ),
                      seatRow(
                        seatRow: "4",
                      ),
                      seatRow(
                        seatRow: "5",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "C",
                        style: cGreyThemeCard16Regular,
                      ),

                      //NOTE: NBOXAVAILABLE
                      seatBox(
                        index: 10,
                      ),
                      seatBox(
                        index: 11,
                      ),
                      seatBox(
                        index: 12,
                      ),
                      seatBox(
                        index: 13,
                      ),
                      seatBox(
                        index: 14,
                        isAvailable: false,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "D",
                        style: cGreyThemeCard16Regular,
                      ),

                      //NOTE: NBOXAVAILABLE
                      seatBox(
                        index: 15,
                        isAvailable: false,
                      ),
                      seatBox(
                        index: 16,
                        isAvailable: false,
                      ),
                      seatBox(
                        index: 17,
                      ),
                      seatBox(
                        index: 18,
                      ),
                      seatBox(
                        index: 19,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
                bottom: 16,
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      "Your Seat",
                      style: cGreyThemeCard14,
                    ),
                  ),
                  Text(
                    "A2, B3",
                    style: cBlackTheme16Medium,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.end,
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
            horizontal: 24,
            vertical: 30,
          ),
          children: [
            Column(
              children: [
                //inisialisasiSeat(),
                headerTitle(),
                contentSeat(),
                CustomButton(
                  cText: "Continue to Checkout",
                  cDestination: '/',
                  cWidth: double.infinity,
                  cMargin: EdgeInsets.only(top: 44, bottom: 60),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/
