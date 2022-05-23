import 'package:flutter/material.dart';
import 'package:learn_app_plane/models/destination_model.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';

class DetailsPage extends StatelessWidget {
  final DestinationModel destination;

  const DetailsPage(
    this.destination, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(destination.urlImage),
          ),
        ),
      );
    }

    Widget gradientHitam() {
      return Container(
        margin: EdgeInsets.only(top: 236),
        width: double.infinity,
        height: 214,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              cWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    // NOTE:Emblem
    Widget logoEmblem() {
      return SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 108,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logoEmblem.png"),
              ),
            ),
          ),
        ),
      );
    }

    /*Widget logoEmblem2() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            Container(
              width: 108,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logoEmblem.png"),
                ),
              ),
            )
          ],
        ),
      );



      /*return SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 108,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logoEmblem.png"),
              ),
            ),
          ),
        ),
      );*/
    }*/

    Widget detailsContent() {
      return Container(
        // margin: EdgeInsets.only(
        //   top: 310,
        //   left: 24,
        //   right: 24,
        // ),
        padding: EdgeInsets.only(
          top: 310,
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination.destination,
                        style: cWhiteTheme24Semibold,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                      Text(
                        destination.location,
                        style: cWhiteTheme16,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logoStar.png",
                      width: 18,
                      height: 18,
                    ),
                    SizedBox(width: 5),
                    Text(
                      destination.rating.toString(),
                      style: cWhiteTheme14Medium,
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              width: double.infinity,
              //height: 200,
              decoration: BoxDecoration(
                color: cWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: cBlackTheme16Semibold,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                      style: cBlackTheme14Regular.copyWith(
                          height: 1.8), //lineHeight dibagi fontSize
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Photos",
                            style: cBlackTheme16Semibold,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 6,
                                  right: 16,
                                ),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: cPurpleColor,
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/image14Photo.png"),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 6,
                                  right: 16,
                                ),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: cPurpleColor,
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/image15Photo.png"),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 6,
                                  right: 16,
                                ),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: cPurpleColor,
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/image16Photo.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Interest",
                            style: cBlackTheme16Semibold,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/logoCheck.png",
                                          height: 16,
                                          width: 16,
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "Kids Park",
                                          style: cBlackTheme14Regular,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/logoCheck.png",
                                          height: 16,
                                          width: 16,
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "City Museum",
                                          style: cBlackTheme14Regular,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/logoCheck.png",
                                          height: 16,
                                          width: 16,
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "Kids Park",
                                          style: cBlackTheme14Regular,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/logoCheck.png",
                                          height: 16,
                                          width: 16,
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "City Museum",
                                          style: cBlackTheme14Regular,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 70),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IDR 2.500.000",
                          style: cBlackThemeCard18,
                        ),
                        Text(
                          "per orang",
                          style: cGreyThemeCard14,
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    cText: "Book Now",
                    onPressed: () {
                      Navigator.pushNamed(context, '/chooseseats');
                    },
                    cWidth: 170,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: cGreyBacgroundColor,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              backgroundImage(),
              gradientHitam(),
              logoEmblem(),
              detailsContent(),
            ],
          ),
        ],
      ),
    );
  }
}
