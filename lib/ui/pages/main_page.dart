import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_app_plane/cubit/page_cubit.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/pages/m_destination_page.dart';
import 'package:learn_app_plane/ui/pages/m_setting_page.dart';
import 'package:learn_app_plane/ui/pages/m_transaction_page.dart';
import 'package:learn_app_plane/ui/pages/m_wallet_page.dart';
import 'package:learn_app_plane/ui/pages/splash_page.dart';
// import 'package:learn_app_plane/ui/widget/custom_main_card.dart';
// import 'package:learn_app_plane/ui/widget/custom_main_card2.dart';
import 'package:learn_app_plane/ui/widget/custom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int index) {
      switch (index) {
        case 0:
          return DestinationPage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: 24,
            right: 24,
          ),
          decoration: BoxDecoration(
            color: cWhiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomNavigation(
                index: 0,
                urlImage: "assets/images/logo2Globe.png",
              ),
              CustomNavigation(
                index: 1,
                urlImage: "assets/images/logo2Book.png",
              ),
              CustomNavigation(
                index: 2,
                urlImage: "assets/images/logo3Card.png",
              ),
              CustomNavigation(
                index: 3,
                urlImage: "assets/images/logo4Setting.png",
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: cGreyBacgroundColor,
          body: SafeArea(
            child: Stack(
              children: [
                buildContent(state),
                bottomNavigation(),
              ],
            ),
          ),
        );
      },
    );
  }
}
