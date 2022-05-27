import 'package:bloc/bloc.dart';
//import 'package:equatable/equatable.dart';

//part 'seat_state.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  bool isSelected(String id) {
    /*if (state.indexOf(id) == -1) {
      return false;
    } else {
      return true;
    }*/

    int index = state.indexOf(
        id); //mencari lokasi index id di dalam list, kalau misal gak ada maka nilai akan jadi -1 karena list dimulai dari index 0

    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }

  void selectSeat(String id) {
    //print("state sebelumnya : $state");
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }

    List<String> seatNow = List.from(state);
    print(state);
    emit(seatNow);
    //print("state sekarang : $state");
  }
}
