import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_app_plane/cubit/auth_cubit.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/custom_main_card.dart';
import 'package:learn_app_plane/ui/widget/custom_main_card2.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headTitle() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Howdy, \n${state.user.name}",
                        style: cBlackThemeHeadline24,
                        overflow: TextOverflow.fade,
                        //maxLines: 3,
                        softWrap: false,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Where to fly today?",
                        style: cGreyThemeExplainer16,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage("assets/images/image12Profile.png"),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget cardHorizontal() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomMainCard(
              urlImage: "assets/images/image2Destination.png",
              destination: "Lake Ciliwung Mamakero",
              location: "Tangerang city of the badass",
              rating: 4.8,
            ),
            CustomMainCard(
              urlImage: "assets/images/image3Destination.png",
              destination: "White Houses",
              location: "Spain",
            ),
            CustomMainCard(
              urlImage: "assets/images/image4Destination.png",
              destination: "Hill Heyo",
              location: "Monaco",
              rating: 4.7,
            ),
            CustomMainCard(
              urlImage: "assets/images/image5Destination.png",
              destination: "Menarra",
              location: "Japan",
              rating: 5.0,
            ),
            CustomMainCard(
              urlImage: "assets/images/image6Destination.png",
              destination: "Payung Teduh",
              location: "Singapore",
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    Widget cardVertical() {
      return Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomMainCard2(
            urlImage: "assets/images/image7Destination.png",
            destination: "Danau Beratan Beratan Beratan Beratan",
            location: "Singaraja Beratan Beratan Beratan Beratan",
            rating: 4.5,
          ),
          CustomMainCard2(
            urlImage: "assets/images/image8Destination.png",
            destination: "Sydney Opera",
            location: "Australia",
            rating: 4.7,
          ),
          CustomMainCard2(
            urlImage: "assets/images/image9Destination.png",
            destination: "Roma",
            location: "Italy",
          ),
          CustomMainCard2(
            urlImage: "assets/images/image10Destination.png",
            destination: "Payung Teduh",
            location: "Singapore",
            rating: 4.5,
          ),
          CustomMainCard2(
            urlImage: "assets/images/image11Destination.png",
            destination: "Hill Hey",
            location: "Monaco",
            rating: 4.7,
          ),
          SizedBox(
            height: 70,
          )
        ],
      );
    }

    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 30,
      ),

      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headTitle(),
        SizedBox(
          height: 30,
        ),
        cardHorizontal(),
        SizedBox(
          height: 30,
        ),
        Text(
          "New This Year",
          style: cBlackThemeSubHeadline18,
        ),
        /*Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              //width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: cPurpleColor,
                borderRadius: BorderRadius.circular(20),
              ),
              //child: Text("HALO"),
            ),
          ],
        ),*/
        SizedBox(
          height: 16,
        ),
        cardVertical(),
      ],
    );
  }
}
