import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_app_plane/cubit/auth_cubit.dart';
import 'package:learn_app_plane/cubit/destination2_cubit.dart';
import 'package:learn_app_plane/cubit/destination_cubit.dart';
import 'package:learn_app_plane/shared/theme.dart';
import 'package:learn_app_plane/ui/widget/custom_main_card.dart';
import 'package:learn_app_plane/ui/widget/custom_main_card2.dart';

import '../../models/destination_model.dart';

class DestinationPage extends StatefulWidget {
  const DestinationPage({Key? key}) : super(key: key);

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  void initState() {
    context.read<DestinationCubit>().fetchDestionation();
    context.read<Destination2Cubit>().fetchDestination();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget headTitle() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Howdy, \n${state.user.name}",
                        style: cBlackThemeHeadline24,
                        overflow: TextOverflow.fade,
                        //maxLines: 3,
                        softWrap: false,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Where to fly today?",
                        style: cGreyThemeExplainer16,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage("assets/images/image12Profile.png"),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    /* Widget cardHorizontal(List<DestinationModel> destination) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: destination.map((DestinationModel e) {
            return CustomMainCard(e);
          }).toList(),
        ),
      );
    }*/

    Widget cardHorizontal(List<DestinationModel> destination) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: destination.map((DestinationModel e) {
            return CustomMainCard(e);
          }).toList(),
        ),
      );
    }

    Widget cardVertical(List<DestinationModel> destination) {
      return Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Column(
                children: destination.map((DestinationModel e) {
                  return CustomMainCard2(e);
                }).toList(),
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ],
      );
    }

    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        if (state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: cRedColor,
            content: Text(state.error),
          ));
        }
      },
      builder: (context, state) {
        if (state is DestinationSuccess) {
          return ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),

            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headTitle(),
              SizedBox(
                height: 30,
              ),
              cardHorizontal(state.destinations),
              SizedBox(
                height: 30,
              ),
              Text(
                "New This Year",
                style: cBlackThemeSubHeadline18,
              ),
              /*Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  //width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: cPurpleColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //child: Text("HALO"),
                ),
              ],
            ),*/
              SizedBox(
                height: 16,
              ),
              cardVertical(state.destinations),
            ],
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
