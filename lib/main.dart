import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_app_plane/cubit/auth_cubit.dart';
import 'package:learn_app_plane/cubit/page_cubit.dart';
import 'package:learn_app_plane/ui/pages/bonus_page.dart';
import 'package:learn_app_plane/ui/pages/checkout_page.dart';
//import 'package:learn_app_plane/ui/pages/choose_seats.dart';
import 'package:learn_app_plane/ui/pages/choose_seats2.dart';
import 'package:learn_app_plane/ui/pages/details_page.dart';
import 'package:learn_app_plane/ui/pages/get_started.dart';
import 'package:learn_app_plane/ui/pages/main_page.dart';
import 'package:learn_app_plane/ui/pages/sign_up.dart';
import 'package:learn_app_plane/ui/pages/splash_page.dart';
import 'package:learn_app_plane/ui/pages/success_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomePage(),
          '/getstarted': (context) => const GetStarted(),
          '/signup': (context) => SignUp(),
          '/bonuspage': (context) => const BonusPage(),
          '/mainpage': (context) => const MainPage(),
          '/detailspage': (context) => const DetailsPage(),
          '/chooseseats': (context) => const ChooseSeats(),
          '/checkout': (context) => const CheckOut(),
          '/success': (context) => const SuccessPage(),
        },
      ),
    );
  }
}
