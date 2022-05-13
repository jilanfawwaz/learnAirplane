import 'package:flutter/material.dart';
import 'package:learn_app_plane/ui/widget/custom_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(cText: "SignOut", cDestination: '/'),
      ),
    );
  }
}
