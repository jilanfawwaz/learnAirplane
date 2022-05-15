import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_app_plane/cubit/auth_cubit.dart';
import 'package:learn_app_plane/shared/theme.dart';

class PurpleCard extends StatelessWidget {
  const PurpleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            margin: EdgeInsets.only(bottom: 80),
            padding: EdgeInsets.all(24),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/images/CanvasUngu.png"),
              ),
              boxShadow: [
                BoxShadow(
                  //spreadRadius: 4,
                  color: cPurpleColor.withOpacity(0.5),
                  offset: Offset(0, 10),
                  blurRadius: 50,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: cWhiteTheme16.copyWith(fontSize: 14),
                          ),
                          Text(
                            "${state.user.name}",
                            style: cWhiteTheme16Medium.copyWith(fontSize: 20),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/logoPlane.png",
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Pay",
                          style: cWhiteTheme16Medium,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: cWhiteTheme16.copyWith(fontSize: 14),
                    ),
                    Text(
                      "IDR 280.000.000",
                      style: cWhiteTheme16Medium.copyWith(fontSize: 26),
                    )
                  ],
                ),
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
