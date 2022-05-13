import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_app_plane/shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
  
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, '/getstarted');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPurpleColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(
                  bottom: 50,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logoPlane.png"),
                  ),
                ),
              ),
                  
              Text(
                "AIRPLANE",
                style: cWhiteTheme32.copyWith(
                    fontWeight: medium, letterSpacing: 10.8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
