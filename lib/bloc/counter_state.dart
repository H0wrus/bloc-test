part of 'counter_bloc.dart';

abstract class CounterState {
  const CounterState();
}

class CounterInitial extends CounterState {
}

class CounterUpdatedState extends CounterState {
  final int value;
  CounterUpdatedState(this.value);
}
