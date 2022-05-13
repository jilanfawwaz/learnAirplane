import 'package:flutter/material.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/image1Pesawat.png"),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Like a Bird",
                  style: cWhiteTheme32.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore new world with us and let \n yourself get an amazing experiences",
                  style: cWhiteTheme16.copyWith(
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  cText: "Get Started",
                  cDestination: "/signup",
                  cMargin: EdgeInsets.only(
                    top: 50,
                    bottom: 80,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
