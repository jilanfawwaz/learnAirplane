import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_app_plane/cubit/seat_cubit.dart';
import 'package:learn_app_plane/shared/theme.dart';

class SeatItem extends StatelessWidget {
  final int indexStatus;
  final String id;

  const SeatItem({
    Key? key,
    required this.indexStatus,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (indexStatus) {
        case 0:
          return cPurpleSeatColor;
        case 1:
          return cPurpleColor;
        case 2:
          return cGreySeatColor;
        default:
          return cGreySeatColor;
      }
    }

    border() {
      switch (indexStatus) {
        case 0:
          return cPurpleColor;
        case 1:
          return cPurpleColor;
        case 2:
          return cGreySeatColor;
        default:
          return cGreySeatColor;
      }
    }

    textYou() {
      switch (indexStatus) {
        case 0:
          return SizedBox();
        case 1:
          return Text(
            "YOU",
            style: cWhiteTheme14Semibold,
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        context.read<SeatCubit>().selectSeat(id);
      },
      child: Container(
        width: 48,
        height: 48,
        margin: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: border(),
            width: 2,
          ),
        ),
        child: Center(
          child: textYou(),
        ),
      ),
    );
  }
}
