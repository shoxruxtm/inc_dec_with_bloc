part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CountIncrement extends CounterEvent {}

class CountDecrement extends CounterEvent {}


