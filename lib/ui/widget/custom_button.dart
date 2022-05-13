import 'package:flutter/material.dart';
import 'package:learn_app_plane/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String cText;
  final String cDestination;
  final double cWidth;
  final EdgeInsets cMargin;

  const CustomButton(
      {Key? key,
      required this.cText,
      required this.cDestination,
      this.cWidth = 220,
      this.cMargin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cWidth,
      height: 55,
      margin: cMargin,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, cDestination);
        },
        style: TextButton.styleFrom(
          backgroundColor: cPurpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          cText,
          style: cWhiteThemeButton18,
        ),
      ),
    );
  }
}
