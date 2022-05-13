import 'package:flutter/material.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/balance_card.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PurpleCard(),
              Text(
                "Big Bonus 🎉",
                style: cBlackThemeHeadline24.copyWith(fontSize: 32),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We give you early credit so that \nyou can buy a flight ticket",
                style: cGreyThemeExplainer16,
                textAlign: TextAlign.center,
              ),
              CustomButton(
                cText: "Start Fly Now",
                onPressed: () {
                  Navigator.pushNamed(context, '/mainpage');
                },
                cMargin: EdgeInsets.only(top: 50),
              ),

              /*Text(
                "Yang ini default Light w300",
                style: cWhiteTheme16,
              ),
              Text(
                "Yang ini regular w400",
                style: cWhiteTheme16.copyWith(fontWeight: FontWeight.w400),
              ),
              Text(
                "Yang ini medium w500",
                style: cWhiteTheme16.copyWith(fontWeight: FontWeight.w500),
              ),
              Text(
                "Yang ini semibold w600",
                style: cWhiteTheme16.copyWith(fontWeight: FontWeight.w600),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
