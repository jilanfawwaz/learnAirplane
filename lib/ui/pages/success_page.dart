import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cGreyBacgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 80,
              ),
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/logoSuccess.png",
                  ),
                ),
              ),
            ),
            Text(
              "Well Booked 😍",
              style: cBlackTheme32Semibold,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Are you ready to explore the new\nworld of experiences?",
              style: cGreyTheme16Light.copyWith(height: 1.75),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              cText: "My Bookings",
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              cMargin: EdgeInsets.only(
                top: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
