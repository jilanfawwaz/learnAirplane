import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_app_plane/cubit/page_cubit.dart';
import 'package:learn_app_plane/shared/theme.dart';

class CustomNavigation extends StatelessWidget {
  final int index;
  final String urlImage;

  const CustomNavigation({
    Key? key,
    required this.index,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            urlImage,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? cPurpleColor
                : cGreyColor,
          ),
          Container(
            width: 30,
            height: 2,
            color: context.read<PageCubit>().state == index
                ? cPurpleColor
                : cTransparentColor,
          ),
        ],
      ),
    );
  }
}
