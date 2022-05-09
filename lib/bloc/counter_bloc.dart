import 'dart:async';

import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  int _counter = 0;

  CounterBloc() : super(CounterInitial()) {
    on<IncrementEvent>((event, emit) {
      _counter++;
      emit(CounterUpdatedState(_counter));
    });
  }
}
