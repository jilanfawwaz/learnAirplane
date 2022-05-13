import 'package:flutter/material.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';
import 'package:learn_app_plane/ui/widget/custom_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          "Join us and get \nyour next journey",
          style: cBlackThemeHeadline24,
        ),
      );
    }

    /*Widget inputTemplate(String title, String hintText, bool isPassword) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              obscureText: isPassword,
              decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget inputForm() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 24, right: 24),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: cWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            inputTemplate("Full Name", "input your name", false),
            inputTemplate("Email Address", "input your email", false),
            inputTemplate("Password", "input your password", true),
            inputTemplate("Hobby", "input your hobby", false),
            CustomButton(cText: "Get Started", cDestination: "/"),
          ],
        ),
      );
    }*/

    /*Widget inputTemplate(
        {String cText = "", String cHint = "", bool isPassword = false}) {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cText),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: cBlackColor,
              obscureText: isPassword,
              decoration: InputDecoration(
                hintText: cHint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: cPurpleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }*/

    Widget inputForm() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: cWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            CustomForm(cText: "Full Name", cHint: "Input Name Here"),
            CustomForm(cText: "Email Address", cHint: "Input Email Here"),
            CustomForm(
                cText: "Password",
                cHint: "Input Password Here",
                isPassword: true),
            CustomForm(cText: "Hobby", cHint: "Input Hobby Here"),
            CustomButton(
              cText: "Get Started",
              cDestination: '/bonuspage',
              cWidth: 287,
              cMargin: EdgeInsets.only(
                top: 10,
              ),
            )
          ],
        ),
      );
    }

    Widget termsAndConditions() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: () {},
          child: Text(
            "Terms and Conditions",
            style: cGreyThemeExplainer16.copyWith(
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: cGreyBacgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            title(),
            inputForm(),
            termsAndConditions(),
          ],
        ),
      ),
    );
  }
}
