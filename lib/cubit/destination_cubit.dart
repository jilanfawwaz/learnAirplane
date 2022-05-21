import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
//import 'package:learn_app_plane/cubit/auth_cubit.dart';
import 'package:learn_app_plane/models/destination_model.dart';
import 'package:learn_app_plane/services/destination_services.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetchDestionation() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destination =
          await DestinationServices().fetchDestination();

      emit(DestinationSuccess(destination));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
