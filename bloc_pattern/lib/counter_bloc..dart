//import 'dart:async';
//
//import 'counter_event.dart';
//
//class CounterBloc {
//  int _counter = 0;
//
//  final _counterStateController = StreamController<int>();
//  StreamSink<int> get _inCounter => _counterStateController.sink;
//
//  Stream<int> get counter => _counterStateController.stream;
//
//  final _counterEventController = StreamController<CounterEvent>();
//
//  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;
//
//  CounterBloc() {
//    _counterEventController.stream.listen(_mapEventToState);
//  }
//
//  void _mapEventToState(CounterEvent event) {
//    if(event is IncrementEvent)
//      _counter++;
//    else
//      _counter--;
//
//    _inCounter.add(_counter);
//  }
//
//  void dispose() {
//    _counterStateController.close();
//    _counterEventController.close();
//  }
//


import 'package:bloc_pattern/counter_event.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(
      CounterState currentState,
      CounterEvent event,
  ) async* {
    //CounterState currentState;
    if(event is IncrementEvent) {
      yield currentState..counter += 1;
    } else if(event is DecrementEvent) {
      yield currentState..counter -= 1;
    }
  }

}



