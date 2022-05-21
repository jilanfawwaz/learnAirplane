part of 'destination2_cubit.dart';

abstract class Destination2State extends Equatable {
  const Destination2State();

  @override
  List<Object> get props => [];
}

class Destination2Initial extends Destination2State {}

class Destination2Loading extends Destination2State {}

class Destination2Success extends Destination2State {
  final List<Destination2Model> destination;

  Destination2Success(this.destination);

  @override
  List<Object> get props => [destination];
}

class Destination2Failed extends Destination2State {
  final String error;

  Destination2Failed(this.error);

  @override
  List<Object> get props => [error];
}
