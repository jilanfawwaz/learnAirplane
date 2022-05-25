import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

//part 'seat_state.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  bool isSelected(String id) {
    if (state.indexOf(id) == -1) {
      return false;
    } else {
      return true;
    }
  }

  void selectSeat(String id) {
    print("state sebelumnya : $state");
    if (!isSelected(id)) {
      state.add(id);
    }

    emit(state);
    print("state sekarang : $state");
  }
}
