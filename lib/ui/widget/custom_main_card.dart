import 'package:flutter/material.dart';
import 'package:learn_app_plane/models/destination_model.dart';
import 'package:learn_app_plane/shared/theme.dart';

class CustomMainCard extends StatelessWidget {
  final DestinationModel destination;

  const CustomMainCard(
    this.destination, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detailspage');
      },
      child: Container(
        margin: EdgeInsets.only(right: 24),
        padding: EdgeInsets.all(10),
        height: 323,
        width: 200,
        decoration: BoxDecoration(
          color: cWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),

        //child: Stack
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                color: cPurpleColor,
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(destination.urlImage),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, right: 3, left: 6),
                  height: 30,
                  width: 55,
                  decoration: BoxDecoration(
                    color: cWhiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/logoStar.png",
                        width: 18,
                        height: 18,
                      ),
                      Text(
                        destination.rating.toString(),
                        style: cBlackTheme14,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.destination,
                    style: cBlackThemeCard18,
                    overflow: TextOverflow.fade,
                    //maxLines: 1,
                    softWrap: false,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    destination.location,
                    style: cGreyThemeCard14,
                    overflow: TextOverflow.fade,
                    //maxLines: 1,
                    softWrap: false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
