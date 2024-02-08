part of 'counter_bloc.dart';

abstract class CounterState {}

class CounterInitial extends CounterState{}

class CounterLoading extends CounterState{}

class CounterSuccess extends CounterState {
  int count;

  CounterSuccess({this.count = 0});

}

class CounterError extends CounterState{}
