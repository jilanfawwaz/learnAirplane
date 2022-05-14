import 'package:flutter/material.dart';
import 'package:learn_app_plane/shared/theme.dart';

class CustomForm extends StatelessWidget {
  final String cText;
  final String cHint;
  final bool isPassword;
  final TextEditingController controller;

  const CustomForm({
    Key? key,
    required this.cText,
    required this.cHint,
    this.isPassword = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            enableSuggestions: false,
            autocorrect: false,
            
            cursorColor: cBlackColor,
            obscureText: isPassword,
            controller: controller,
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
  }
}
