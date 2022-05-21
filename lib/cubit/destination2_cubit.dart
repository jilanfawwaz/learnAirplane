import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learn_app_plane/models/destination2_model.dart';
import 'package:learn_app_plane/services/destination2_service.dart';

part 'destination2_state.dart';

class Destination2Cubit extends Cubit<Destination2State> {
  Destination2Cubit() : super(Destination2Initial());

  void fetchDestination() async {
    try {
      emit(Destination2Loading());

      List<Destination2Model> destination =
          await Destination2Service().fetchDestination();

      emit(Destination2Success(destination));
    } catch (e) {
      emit(Destination2Failed(e.toString()));
    }
  }
}
