//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:learn_app_plane/models/destination_model.dart';
import 'package:learn_app_plane/shared/theme.dart';

class CustomMainCard2 extends StatelessWidget {
  final DestinationModel destination;

  const CustomMainCard2(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detailspage');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: cWhiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //Gambar
              width: 70,
              height: 70,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                //color: cPurpleColor,
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(destination.urlImage),
                ),
              ),
            ),
            //SizedBox(width: 16),
            Expanded(
              child: Column(
                //Location & Destionation
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.destination,
                    style: cBlackThemeCard18,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                  SizedBox(height: 5),
                  Text(
                    destination.location,
                    style: cGreyThemeCard14,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                ],
              ),
            ),

            //SizedBox(),
            SizedBox(
              width: 8,
            ),

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
                  destination.rating.toString(),
                  style: cBlackTheme14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
